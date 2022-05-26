require 'json'
require_relative '../classes/genre'

module PreserveGenres
  def load_genres
    data = []
    file = './data/genres.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |genre|
        data.push(Genre.new(genre['name']))
      end
    else
      File.write(file, [])
    end

    data
  end
end
