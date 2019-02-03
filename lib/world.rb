
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
        living_neighbours += 1 if ((element.show_location == [x-1, y-1]) && (element.living?))
        living_neighbours += 1 if ((element.show_location == [x-1, y]) && (element.living?))
        living_neighbours += 1 if ((element.show_location == [x-1, y+1]) && (element.living?))
        living_neighbours += 1 if ((element.show_location == [x-0, y-1]) && (element.living?))
        living_neighbours += 1 if ((element.show_location == [x-0, y+1]) && (element.living?))
        living_neighbours += 1 if ((element.show_location == [x+1, y-1]) && (element.living?))
        living_neighbours += 1 if ((element.show_location == [x+1, y]) && (element.living?))
        living_neighbours += 1 if ((element.show_location == [x+1, y+1]) && (element.living?))
      end
    end
    living_neighbours
  end

# live cell with 2/3 survives else dead
# dead cell with 3 is alive else dead

end
