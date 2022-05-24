require './classes/game'
require './classes/author'

class App
  def initialize()
    @games = []
    @authors = []
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
end
