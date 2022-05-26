require_relative '../classes/game'

describe Game do
  context '#initialize' do
    it 'should initialize a new game' do
      game = Game.new('2020-01-01', true, '2010-01-01')
      expect(game.last_played_at).to eq('2020-01-01')
      expect(game.multiplayer).to eq(true)
      expect(game.publish_date).to eq('2010-01-01')
    end
  end

  context '#can_be_archived?' do
    it 'check if game can be archived' do
      game = Game.new('2022-01-01', true, '2010-01-01')
      expect(game.can_be_archived?).to eq(true)
    end

    it 'check if game cannot be archived' do
      game = Game.new('2022-01-01', true, '2021-01-01')
      expect(game.can_be_archived?).to eq(false)
    end
  end
end
