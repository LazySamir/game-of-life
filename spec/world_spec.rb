require_relative '../lib/world.rb'
describe 'World' do
  subject(:world) {World.new(5, 5)}

  it "knows it\'s no. rows" do
    expect(world).to respond_to(:rows)
  end
  it "knows it\'s no. columns" do
    expect(world).to respond_to(:columns)
  end
    # it "starts with empty array" do
    #   expect(world.map).to eq([])
    # end
end
