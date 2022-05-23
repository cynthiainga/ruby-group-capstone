require_relative '../classes/game'
require 'date'

describe Game do
  before(:example) do
    @instance = Game.new
  end

  it 'should initialize with multiplier == false' do
    expect(@instance.multiplayer).to eq(false)
  end

  it 'can be archived if its more than 2 years old' do
    now = DateTime.now
    year = now.year - 3
    month = (now.month + 6) % 12
    day = now.day

    expect(@instance.can_be_archived?).to be(false)
    @instance.last_played_at = "#{year}-#{month}-#{day}"
    expect(@instance.can_be_archived?).to be(true)
  end
end
