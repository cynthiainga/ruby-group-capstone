require_relative '../classes/item.rb'

describe Item do
  before(:example) do
    @instance = Item.new(genre:'genre', author:'author') 
  end

  it 'should initialize' do
    expect(@instance.genre).to eq('genre')
    expect(@instance.author).to eq('author')
  end

  it 'should move item to archive if item can be archived' do
    @instance.move_to_archive() if @instance.can_be_archived?()
    expect(@instance.archived).to be(true)
  end

end