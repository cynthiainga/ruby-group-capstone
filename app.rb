require_relative './modules/game_module'
require_relative './modules/list_game'
require_relative './modules/preserve_games'

class App
  attr_accessor :books, :games, :authors, :music_albums

  include InitializeMethods
  include Listing
  include PreserveGames

  def initialize
    @books = []
    @authors = []
    @labels = []
    @genres = []
    @music_albums = []
    @games = []
  end

  def list_all_books
    puts 'list all books'
  end

  def add_a_book
    puts 'add a book'
  end

  def list_all_labels
    puts 'list all labels'
  end

  def save_data
    save_games
    save_authors
  end

  def save_book
    puts 'save_book'
  end

  def load_book
    puts 'Load book'
  end

  def list_all_music_albums
    puts 'list music albums'
  end

  def list_all_genres
    puts 'list genres'
  end

  def add_music_album
    puts 'add music album'
  end

  def list_all_games
    list_games(@games)
    sleep 2
  end

  def add_a_game
    game = create_new_game
    @games << game
    @authors << game.author
    puts "\nThank you for adding a new game.\n"
    sleep 3
  end

  def list_all_authors
    list_authors(@authors)
    sleep 2
  end
end
