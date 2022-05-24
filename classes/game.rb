require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer: false, last_played_at: 0, **args)
    super(**args)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super()
    @can_be_archived and calculate_years_from_last_played(@last_played_at) > 2
  end

  private

  def calculate_years_from_last_played(last_played)
    # Difference in years, less one if you have not had a birthday this year.
    now = DateTime.now
    date_data = last_played.split('-')
    last_played = DateTime.new(date_data[0].to_i, date_data[1].to_i, date_data[2].to_i)
    a = now.year - last_played.year
    a -= 1 if
        now.month > last_played.month or
        (now.month == last_played.month and now.day > last_played.day)

    a
  end
end
