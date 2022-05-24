class Main
  def options
    puts "\n\nPlease select an action to perform please\n\n"
    puts '1. List all books
    2. List all music albums
    3. List all movies
    4. List all games
    5. List all genres
    6. List all labels
    7. List all authors
    8. List all sources
    9. Add a book
    10. Add a music album
    11. Add a movie
    12. Add a game
    13. Quit
    Please enter your choice'
  end

  def run
    puts "\n\n***Welcome to the application ***\n\n"
    options
    choice = gets.chomp.to_i
    case choice
    when 1
      puts 'Listing all books'
    when 2
      puts 'Listing all music albums'
    when 3
      puts 'Listing all movies'
    when 4
      puts 'Listing all games'
    when 5
      puts 'Listing all genres'
    when 6
      puts 'Listing all labels'
    when 7
      puts 'Listing all authors'
    when 8
      puts 'Listing all sources'
    when 9
      puts 'Add a book'
    when 10
      puts 'Add a music album'
    when 11
      puts 'Add a movie'
    when 12
      puts 'Add a game'
    when 13
      puts 'Quitting'
    else
      puts 'Invalid choice'
    end
  end
end

initial = Main.new
initial.run
