require './classes/label'
require './classes/book'

describe 'Book' do
  context 'takes a book and validates can_be_archived method' do
    book = Book.new('The Best Book', 'publisher', 'bad', Time.new(2015, 0o5, 0o5))

    it 'should validate the book title' do
      expect(book.title).to eq 'The Best Book'
    end

    it 'should validate the book publisher' do
      expect(book.publisher).to eq 'publisher'
    end

    it 'should validate the book cover state' do
      expect(book.cover_state).to eq 'bad'
    end

    it 'should validate the book publish date' do
      expect(book.publish_date).to eq Time.new(2015, 0o5, 0o5)
    end

    it 'test if can_be_archived? method works correctly' do
      book.move_to_archive
      expect(book.archived).to be true
    end
  end
end
