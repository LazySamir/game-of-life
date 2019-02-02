require "./lib/world.rb"
require "./lib/cell.rb"
world = World.new(3,3)
puts "stop"
world.map[0][0].living?
