require_relative '../classes/game'

describe Game do
  before(:example) do
    @instance = Game.new
  end

  it 'should initialize with multiplier == false' do
    expect(@instance.multiplayer).to eq(false)
  end

  it 'can be archived if parent can be archived' do
    expect(@instance.can_be_archived?).to be(true)
  end
end
