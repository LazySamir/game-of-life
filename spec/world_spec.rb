require_relative '../lib/world.rb'
require_relative '../lib/cell.rb'

describe 'World' do
  subject(:world) {World.new(5, 5)}
  subject(:small_world) {World.new(3, 3)}
  subject(:large_world) {World.new(10, 10)}

  it "knows it\'s no. rows" do
    expect(world).to respond_to(:rows)
  end
  it "knows it\'s no. columns" do
    expect(world).to respond_to(:columns)
  end

  describe "#map" do
    it "contains an array of arrays of cells" do
      expect(world.map[0]).to all(be_a(Cell))
      expect(world.map[1]).to all(be_a(Cell))
      expect(world.map[2]).to all(be_a(Cell))
      expect(world.map[3]).to all(be_a(Cell))
      expect(world.map[4]).to all(be_a(Cell))
    end

    describe "creates a map corresponding to arguments given" do
      it "creates a medium map" do
        expect(world.map.length).to eq(5)
        expect(world.map[0].length).to eq(5)
      end

      it "creates a small map" do
        expect(small_world.map.length).to eq(3)
        expect(small_world.map[0].length).to eq(3)
      end

      it "creates a large map" do
        expect(large_world.map.length).to eq(10)
        expect(large_world.map[0].length).to eq(10)
      end
    end
    describe "#find_living_neighbours" do
      it "returns number of living neighbours" do
        expect(world.find_living_neighbours(1,1)).to eq(0)
      end
    end
  end
end
