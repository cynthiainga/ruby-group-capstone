require_relative '../app'
require_relative '../classes/game'

describe App do
  before(:example) do
    @instance = App.new
  end

  it 'should preserve new games on exit' do
    games = [Game.new(label: 'Nice Game', multiplayer: false)]
    @instance.instance_variable_set :@games, games
    @instance.exit
    instance2 = App.new
    expect(instance2.list_all_games).to eq(['Id: 2, Label: Nice Game, Multiplayer: false, Last played: '])
  end
end
