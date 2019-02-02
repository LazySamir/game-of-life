class Cell
  def initialize(loc_x = 0, loc_y = 0)
    @living = false
    @next_living = false
    @loc_x = loc_x
    @loc_y = loc_y
  end

  def living?
    @living
  end

  def next_living?
    @next_living
  end

  def show_location
    [@loc_x][@loc_y]
  end
end
