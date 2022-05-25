require './classes/label'
require './classes/book'

describe 'Label' do
  context 'takes label and validates it\'s properties' do
    label = Label.new('Gift', 'Green')
    book = Book.new('The Best Book', 'publisher', 'bad', Date.parse('2022/4/27'))

    it 'should validate the label title' do
      expect(label.title).to eq 'Gift'
    end

    it 'should validate the label title' do
      expect(label.color).to eq 'Green'
    end

    it 'should add book item to label items array' do
      label.add_item(book)
      expect(label.items[0]).to eq book
    end
  end
end