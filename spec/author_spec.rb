require_relative '../classes/author.rb'
require_relative '../classes/item.rb'

describe Author do
  before(:example)do
    @instance = Author.new(first_name: 'Bob', last_name: 'Marley')
  end

  it 'should initialize' do
    expect(@instance.first_name).to eq('Bob')
  end

  it 'should add new item' do 
    expect(@instance.items.length).to be(0)
    @instance.add_item(item: Item.new())
    expect(@instance.items.length).to be(1)
  end

  it 'should not an item which is not an instance of Item class' do
    count_of_items = @instance.items.length
    @instance.add_item(item: 'not an instance of class Item')
    expect(@instance.items.length).to be(count_of_items)
  end
end