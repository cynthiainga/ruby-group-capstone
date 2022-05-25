require_relative './item'

class Book < Item
  attr_accessor :title, :publisher, :cover_state

  def initialize(title, publisher, cover_state, publish_date)
    super(publish_date, archived, id)
    @title = title
    @publisher = publisher
    @cover_state = cover_state
  end
end