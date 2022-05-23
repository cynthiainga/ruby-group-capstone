require_relative '../classes/game'

describe Game do
  before(:example) do
    @instance = Game.new
  end

  it 'should initialize with multiplier == false' do
    expect(@instance.multiplayer).to eq(false)
  end
end
