# new app
require './classes/game'
require './classes/author'

class App
  def initialize()
    @games = []; 
    @authors = [];
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
    _label = ask_user("Enter game label")
    _multiplayer = ask_user("Is it multiplayer? [Y/N]").downcase

    if _multiplayer == 'y'
      _multiplayer = true
    elsif _multiplayer == 'n'
      _multiplayer = false
    end
    
    new_game = Game.new(label: _label, multiplayer: _multiplayer)
    @games.push(new_game)

  end
end

a = App.new()
a.add_game()

