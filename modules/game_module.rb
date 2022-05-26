require_relative './../classes/author'
require_relative './../app'

module InitializeMethods
  def game_options
    puts 'Last played at (yyyy-mm-dd): '
    last_played_at = gets.chomp

    puts 'Is it Multiplayer? [Y/N]: '
    multiplayer = gets.chomp.downcase

    puts 'Publish date (yyyy-mm-dd): '
    publish_date = gets.chomp

    Game.new(last_played_at, multiplayer, publish_date)
  end

  def author_options
    puts 'First name: '
    first_name = gets.chomp
    puts 'Last name: '
    last_name = gets.chomp
    Author.new(first_name, last_name)
  end

  def create_new_game
    author = author_options
    game = game_options
    author.add_item(game)
    game
  end
end
