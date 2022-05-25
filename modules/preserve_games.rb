require 'json'
require_relative '../classes/game'
require_relative '../classes/author'

module PreserveGames
  def load_games
    data = []
    file = './data/games.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |game|
        data.push(Game.new(game['last_played_at'], game['multiplayer'], game['publish_date']))
      end
    else
      File.write(file, [])
    end
    data
  end

  def load_authors
    data = []
    file = './data/authors.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |author|
        data.push(Author.new(author['first_name'], author['last_name']))
      end
    else
      File.write(file, [])
    end
    data
  end

  def save_games
    data = []
    @games.each do |game|
      data.push({ id: game.id, last_played_at: game.last_played_at, publish_date: game.publish_date,
                  multiplayer: game.multiplayer })
    end
    File.write('./data/games.json', JSON.generate(data))
  end

  def save_authors
    data = []
    @authors.each do |author|
      data.push({ id: author.id, first_name: author.first_name, last_name: author.last_name })
    end
    File.write('./data/authors.json', JSON.generate(data))
  end
end
