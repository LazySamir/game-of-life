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
    @map.each do |array|
      array.each do |element|
        living_neighbours = living_neighbours(element.location[0], element.location[1])
        cells << element if (living_neighbours != (2 || 3)) && (element.living? == true)
        cells << element if (living_neighbours == 3) && (element.living? == false)
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
    living_neighbours = 0
    @map.each do |array|
      array.each do |element|
        if neighbour_locations(x_axis, y_axis).include?(element.location) && element.living?
          living_neighbours += 1
        end
      end
    end
    living_neighbours
  end
end
