require 'date'

class Item
  attr_accessor :publish_date, :archived, :id
  attr_reader :author, :genre, :source, :label

  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(publish_date, archived = false, id = Random.rand(1..1000))
    @id = id
    @publish_date = publish_date
    @archived = archived
  end
  # rubocop:enable Style/OptionalBooleanParameter

  def genre=(genre)
    @genre = genre
    @genre.items.push(self) unless @genre.items.include?(self)
  end

  def author=(author)
    @author = author
    @author.items.push(self) unless @author.items.include?(self)
  end

  def label=(label)
    @label = label
    @label.items.push(self) unless @label.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    now = Date.today.year
    published = @publish_date.to_i
    (now - published) >= 10
  end
end
