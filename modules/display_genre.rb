require_relative '../classes/genre'

module GenreManager
  def display_genres(genres)
    puts
    puts 'Database is empty. Add a genre.' if genres.empty?
    genres.each { |genre| puts "[Genre] Name: #{genre.name}" }
    puts
  end

  def music_genres
    [Genre.new('Comedy'), Genre.new('Thriller'), Genre.new('Pop'), Genre.new('Hip-hop and Rap'), Genre.new('Rock'),
     Genre.new('Reggae'), Genre.new('Rhumba'), Genre.new('Country'), Genre.new('Dance and Electronic'),
     Genre.new('Other')]
  end
end
