<<<<<<< HEAD
require_relative './item'

class Book < Item
  attr_accessor :title, :publisher, :cover_state

  def initialize(title, publisher, cover_state, publish_date)
    super(publish_date, archived)
    @title = title
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
=======
require_relative './item'

class Book < Item
  attr_accessor :title, :publisher, :cover_state

  def initialize(title, publisher, cover_state, publish_date)
    super(publish_date, archived)
    @title = title
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
>>>>>>> fc94827ed62eadb5fb706481e32f50c9d668cf94
