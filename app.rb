require './classes/game'
require './classes/author'
require './classes/file_handler'

class App
  def initialize()
    @games_file_handler = FileHandler.new('games')
    @games = @games_file_handler.read.map do |game|
      Game.new(label: game['label'], archived: game['archived'], can_be_archived: game['can_be_archived'],
               publish_date: game['publish_date'], multiplayer: game['multiplayer'],
               last_played_at: game['last_played_at'])
    end
    @authors_file_handler = FileHandler.new('authors')
    @authors = @authors_file_handler.read.map do |author|
      Author.new(first_name: author['first_name'], last_name: author['last_name'])
    end
  end

  def ask_user(string)
    p "#{string}: "
    gets.chomp
  end

  def list_all_games()
    @games.map do |game|
      "Id: #{game.id}, Label: #{game.label}, Multiplayer: #{game.multiplayer}, Last played: #{game.last_played_at}"
    end
  end

  def list_all_authors()
    @authors.map do |author|
      "Id: #{author.id}, First name: #{author.first_name}, Last name: #{author.last_name}"
    end
  end

  def add_game()
    label_ = ask_user('Enter game label')
    multiplayer_ = ask_user('Is it multiplayer? [Y/N]').downcase

    case multiplayer_
    when 'y'
      multiplayer_ = true
    when 'n'
      multiplayer_ = false
    end

    new_game = Game.new(label: label_, multiplayer: multiplayer_)
    @games.push(new_game)
  end

  def exit
    @games_file_handler.write(@games.map(&:make_object))
    @authors_file_handler.write(@authors.map(&:make_object))
  end
end
