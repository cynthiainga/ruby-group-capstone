def add_genres(genres, item)
  return if genres.empty?

  puts 'Select the genre'
  genres.each_with_index { |genre, idx| puts "#{idx} - #{genre.name}" }
  genres_id = gets.chomp.to_i
  genres[genres_id].add_item(item)
end

def search_genre(genres, key)
  genres.select { |p| p.name == key } [0]
end
