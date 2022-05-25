require 'date'

class Item
  attr_accessor :publish_date
  attr_reader :id, :archived, :author, :genre, :source, :label

  def initialize(publish_date, archived)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

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
    currently_year = DateTime.now.next_month.strftime('%Y').to_i
    publish_year = @publish_date.to_i
    (currently_year - publish_year) >= 10
  end
end

print Item.new(Date.today, false).inspect
