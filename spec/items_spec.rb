require_relative '../classes/item'

describe Item do
  before(:example) do
    @instance = Item.new(genre: 'genre', author: 'author')
  end

  it 'should initialize' do
    expect(@instance.genre).to eq('genre')
    expect(@instance.author).to eq('author')
  end

  it 'should move item to archive if item can be archived' do
    @instance.move_to_archive if @instance.can_be_archived?
    expect(@instance.archived).to be(true)
  end

  it 'should give unique id to each instance' do
    last_id = @instance.id
    another_instance = Item.new()
    expect(another_instance.id).to be (last_id+1)
  end

end
