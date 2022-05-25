require_relative '../classes/book'

module AddBook
  def new_book
    puts 'Please write in title: '
    title = gets.chomp

    puts 'Please write in publisher: '
    publisher = gets.chomp

    puts 'Please write in cover state ["good"/"bad"]'
    cover_state = gets.chomp

    puts 'Please write in date of publish [Enter date in format (yyyy-mm-dd)]'
    publish_date = gets.chomp

    Book.new(title, publisher, cover_state, publish_date)
  end
end