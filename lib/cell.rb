class Cell
  attr_reader :living, :next_living, :loc_x, :loc_y
  def initialize(loc_x = 0, loc_y = 0)
    @living = false
    @next_living = false
    @loc_x = loc_x
    @loc_y = loc_y
  end
end
