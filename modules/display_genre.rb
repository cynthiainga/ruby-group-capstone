require_relative '../classes/genre'

def display_genres(genres)
  puts
  puts 'Database is empty. Add a genre.' if genres.empty?
  genres.each { |genre| puts "[Genre] Name: #{genre.name}" }
  puts
end