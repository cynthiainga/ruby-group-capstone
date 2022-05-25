require_relative '../classes/genre'
require_relative '../classes/item'

describe Genre do
  context 'When testing the Genre class' do
    before(:all) do
      @genre = Genre.new('Hip pop music')
    end

    it 'should return "@genre" as an instance variable of Genre class' do
      expect(@genre).to be_an_instance_of Genre
    end

    it 'should return attribute name of music genre' do
      expect(@genre.name).to eq 'Hip pop music'
    end

    it 'should check a typo error of the attribute name of music genre' do
      expect(@genre.name).not_to eq 'Hip pop musics'
    end

    it 'should return an empty array as the default value of "@items"' do
      expect(@genre.items).to eq []
    end

    it 'should return the length of "@items"' do
      expect(@genre.items.length).to eq 0
    end

    it 'should add an item in items list' do
      item = Item.new('2003-02-23', true)
      @genre.add_item(item)
      expect(@genre.items.length).to eq 1
      expect(@genre.items).to eq [item]
      expect(item.genre).to eq @genre
    end
  end
end