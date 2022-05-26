require_relative './modules/game_module'
require_relative './modules/list_game'
require_relative './modules/preserve_games'
require_relative './modules/display_music'
require_relative './modules/display_genre'
require_relative './classes/genre'
require_relative './classes/music_album'
require_relative './classes/book'
require_relative './modules/add_book'
require_relative './modules/preserve_book'
require_relative './classes/label'
require_relative './modules/preserve_music_album'

class App
  attr_accessor :books, :games, :authors, :music_albums

  include InitializeMethods
  include Listing
  include PreserveGames
  include AddBook
  include PreserveBook
  include GenreManager
  include MusicAlbumManager
  include PreserveMusicAlbums

  def initialize
    @books = load_book
    @authors = []
    @labels = []
    @genres = music_genres
    @music_albums = load_music_albums(@genres)
    @games = []
  end

  def list_all_books
    puts 'There are no books available' if @books.empty?
    @books.each do |book|
      puts "Title: #{book.title}, Publisher: #{book.publisher},
      Cover state: #{book.cover_state}, Date of Publish: #{book.publish_date}"
    end
  end

  def add_a_book
    @books << new_book
    puts 'Book is created'
  end

  def list_all_labels
    puts 'There are no labels available' if @labels.empty?
    @labels.each do |label|
      puts "Title: #{label.title}, Color: #{label.color}"
    end
  end

  def save_data
    save_games
    save_authors
    create_book
    save_music_album(@music_albums)
  end

  def save_book
    puts 'save_book'
  end

  # def load_book
  #   puts 'Load book'
  # end

  def list_all_music_albums
    display_music_album(@music_albums)
  end

  def list_all_genres
    display_genres(@genres)
  end

  def add_music_album
    @music_albums << create_new_music_album(@genres)
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
