<<<<<<< HEAD
require 'json'
require_relative '../classes/book'

module PreserveBook
  def load_label
    data = []
    file = './data/label.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |label|
        data.push(Label.new(label['title'], label['color']))
      end
    else
      File.write(file, [])
    end

    data
  end

  def load_book
    data = []
    file = './data/book.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |book|
        data.push(Book.new(book['title'], book['publisher'], book['cover_state'], book['publish_date']))
      end
    else
      File.write(file, [])
    end
    data
  end

  def create_book
    data = []
    @books.each do |book|
      data.push({ title: book.title, publisher: book.publisher, publish_date: book.publish_date,
                  cover_state: book.cover_state })
    end
    File.write('./data/book.json', JSON.generate(data))
  end
end
=======
require 'json'
require_relative '../classes/book'

module PreserveBook
  def load_label
    data = []
    file = './data/label.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |label|
        data.push(Label.new(label['title'], label['color']))
      end
    else
      File.write(file, [])
    end

    data
  end

  def load_book
    data = []
    file = './data/book.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |book|
        data.push(Book.new(book['title'], book['publisher'], book['cover_state'], book['publish_date']))
      end
    else
      File.write(file, [])
    end
    data
  end

  def create_book
    data = []
    @books.each do |book|
      data.push({ title: book.title, publisher: book.publisher, publish_date: book.publish_date,
                  cover_state: book.cover_state })
    end
    File.write('./data/book.json', JSON.generate(data))
  end
end
>>>>>>> fc94827ed62eadb5fb706481e32f50c9d668cf94
