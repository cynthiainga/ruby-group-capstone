require_relative '../classes/author'
require_relative '../classes/item'

describe Author do
  before(:example) do
    @instance = Author.new('Bob', 'Marley')
  end

  it 'should initialize' do
    expect(@instance.first_name).to eq('Bob')
    expect(@instance.last_name).to eq('Marley')
    expect(@instance.items).to eq([])
  end

  it 'should add new item' do
    item = Item.new(Date.today, false)
    @instance.add_item(item)
    expect(@instance.items).to eq([item])
  end
end
