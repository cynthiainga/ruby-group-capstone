require 'date'

class Item
  attr_accessor :author, :genre, :source, :label, :publish_date
  attr_reader :id, :archived

  @@id = 0

  def initialize(author: 0, genre: 0, source: 0, label: 0, archived: false, date: DateTime.now.to_s.slice(0, 10))
    @id = @@id
    @@id += 1
    @author = author
    @genre = genre
    @source = source
    @label = label
    @archived = archived
    @publish_date = date
  end

  def can_be_archived?
    true
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
