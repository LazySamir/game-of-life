require_relative '../lib/world.rb'
describe 'World' do
  subject(:world) {World.new(5, 5)}
  subject(:small_world) {World.new(3, 3)}

  it "knows it\'s no. rows" do
    expect(world).to respond_to(:rows)
  end
  it "knows it\'s no. columns" do
    expect(world).to respond_to(:columns)
  end
  it "creates a map corresponding to arguments given" do
    expect(world.map).to eq([
      [nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil]
    ])
    expect(small_world.map).to eq([
      [nil, nil, nil],
      [nil, nil, nil],
      [nil, nil, nil]
    ])
  end
end
