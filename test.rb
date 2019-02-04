require "./lib/world.rb"
require "./lib/cell.rb"
world = World.new(3,3)
puts "stop"
world.map[0][0].living?

world.map[0][0].living_toggle
world.map[0][1].living_toggle
world.map[0][2].living_toggle

world.find_living_neighbours(1,1)

world.map[0][0].living?

world.map.each do |x|
  x.each do |y|
    y.living?
  end
end

world.map[1][1].living?
world.tick
world.map[1][1].living?
