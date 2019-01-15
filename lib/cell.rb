class Cell
  attr_reader :living, :loc_x, :loc_y
  def initialize(loc_x = 0, loc_y = 0)
    @living = false
    @loc_x = loc_x
    @loc_y = loc_y
  end
end
