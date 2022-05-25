require_relative 'app'

class Main
  def options
    puts 'Welcome, Choose an action to perform'
    puts '
    1. List all books
    2. List all music albums
    3. List of games
    4. List all genres
    5. List all labels
    6. List all authors
    7. Add a book
    8. Add a music album
    9. Add a game
   10. Exit'
    puts 'Select one number in the list: '
  end

  def valide_input
    app = App.new
    option = nil
    while option != 10
      options
      option = gets.chomp.to_i

      case option
      when 1
        app.list_all_books
      when 2
        app.list_all_music_albums
      when 3
        app.list_all_games
      when 4
        app.list_all_genres
      when 5
        app.list_all_labels
      when 6
        app.list_all_authors
      when 7
        app.add_a_book
      when 8
        app.add_music_album
      when 9
        app.add_a_game
      when 10
        app.save_data
        puts "\nThank you for using our Application!\n\n"
      else
        puts 'Invalid option'
      end
    end
  end
end

main = Main.new
main.valide_input
