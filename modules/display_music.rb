require_relative '../classes/music_album'
require_relative '../classes/genre'
require_relative 'add_genre'

def display_music_album(music_albums)
  puts "\nMusic Albums List\n\n"
  puts 'Database is empty. Add a music album.' if music_albums.empty?
  puts
  music_albums.each do |music_album|
    puts "Music album id: #{music_album.id}"
    puts "Pubublish deta:#{music_album.publish_date}"
    puts "Archived:#{music_album.archived}"
    puts "On spotify:#{music_album.on_spotify}"
    puts "Genre:#{music_album.genre.name}"
    puts
  end
end

def music_album_inputs
  print 'Enter publish date(i.e YYYY-MM-DD): '
  publish_date = gets.chomp
  print 'Is it archived? [Yes/No]: '
  archived = gets.chomp
  print 'Is it on spotify? [Yes/No]: '
  on_spotify = gets.chomp
  [publish_date, archived, on_spotify]
end

def create_new_music_album(genres)
  puts
  puts "Create a new music album\n\n"
  publish_date, archived, on_spotify = music_album_inputs
  puts
  music_album = MusicAlbum.new(on_spotify, publish_date, archived)
  add_genres(genres, music_album)
  puts
  puts "Music_album created successfully.\n\n"
  music_album
end
