
class World
  attr_reader :rows, :columns, :map

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @map = Array.new(rows) do |r|
            Array.new(columns) do |c|
              Cell.new(r, c)
            end
          end
  end

  def find_living_neighbours(x, y)
    living_neighbours = 0
    @map.each do |array|
      array.each do |element|
        living_neighbours += 1 if neighbour_locations(x,y).include?(element.show_location) && (element.living?)
      end
    end
    living_neighbours
  end

private

  def neighbour_locations(x, y)
    [[x-1, y-1], [x-1, y], [x-1, y+1], [x-0, y-1], [x-0, y+1], [x+1, y-1], [x+1, y], [x+1, y+1]]
  end
# live cell with 2/3 survives else dead
# dead cell with 3 is alive else dead
end
