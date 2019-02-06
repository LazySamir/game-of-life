class World
  attr_reader :rows, :columns, :map

  def initialize(rows, columns)
    @map = Array.new(rows) do |r|
      Array.new(columns) do |c|
        Cell.new(r, c)
      end
    end
  end

  def tick
    cells_to_change.each { |x| x.living_toggle }
  end

private

  def cells_to_change
    cells = []
    @map.each do |ar|
      ar.each do |el|
        living = living_neighbours(el.location[0], el.location[1])
        cells << el if (living != (2 || 3)) && (el.living? == true)
        cells << el if (living == 3) && (el.living? == false)
      end
    end
    cells
  end

  def neighbour_locations(x_axis, y_axis)
    [[x_axis - 1, y_axis - 1], [x_axis - 1, y_axis], [x_axis - 1, y_axis + 1],
     [x_axis - 0, y_axis - 1], [x_axis - 0, y_axis + 1],
     [x_axis + 1, y_axis - 1], [x_axis + 1, y_axis], [x_axis + 1, y_axis + 1]]
  end

  def living_neighbours(x_axis, y_axis)
    living = 0
    @map.each do |ar|
      ar.each do |el|
        if neighbour_locations(x_axis, y_axis).include?(el.location) && el.living?
          living += 1
        end
      end
    end
    living
  end

end
