require 'date'

require_relative './item'

class Game < Item
  attr_accessor :last_played_at, :multiplayer
  attr_reader :publish_date

  def initialize(last_played_at, multiplayer, publish_date)
    super(publish_date, false)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    Date.parse(@last_played_at).next_year(2) > Date.today && super
  end
end
