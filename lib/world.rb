class World
  attr_reader :rows, :columns, :map
  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @map = Array.new(rows) do |r|
            Array.new(columns) do |c|
              Cell.new
            end
          end
  end
end
