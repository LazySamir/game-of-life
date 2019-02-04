
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
    toggle = []
    @map.each do |array|
      array.each do |element|
        living_neighbours = find_living_neighbours(element.location[0], element.location[1])
        if (living_neighbours != (2 || 3)) && (element.living? == true)
          toggle << element
        end
        if (living_neighbours == 3) && (element.living? == false)
          toggle << element
        end
      end
    end
    toggle.each {|x| x.living_toggle}
  end

private

  def neighbour_locations(x, y)
    [[x-1, y-1], [x-1, y], [x-1, y+1], [x-0, y-1], [x-0, y+1], [x+1, y-1], [x+1, y], [x+1, y+1]]
  end

  def find_living_neighbours(x,y)
    living_neighbours = 0
    @map.each do |array|
      array.each do |element|
        if neighbour_locations(x,y).include?(element.location) && (element.living?)
          living_neighbours += 1
        end
      end
    end
    living_neighbours
  end
end
