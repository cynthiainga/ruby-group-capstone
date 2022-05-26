require_relative '../classes/music_album'
require_relative 'add_genre'

def save_music_album(musics_albums)

  music_album = music_albums.map do |item|
    {
      publish_date: item.publish_date,
      archived: item.archived,
      on_spotify: item.on_spotify,
      genre: item.genre&.name,
      label: item.label&.title
    }
  end

  data = JSON.generate(music_album)
  File.write('data/music_albums.json', data)
end

def load_music_albums(genres)
  return [] unless File.exist?('data/music_albums.json')

  music_albums = []

  data = File.read('data/music_albums.json')
  JSON.parse(data).each do |item|
    music_album = MusicAlbum.new(item['on_spotify'], item['publish_date'], item['archived'])
    unless item['publish_date'].nil?
      genre = search_genre(genres, item['genre'])
      genre&.add_item(music_album)
      label = search_label(labels, item['label'])
      label&.add_item(music_album)
    end
    music_albums << music_album
  end
  music_albums
end