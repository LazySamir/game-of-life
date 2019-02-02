require_relative '../lib/cell.rb'

describe 'Cell' do
  subject(:cell) {Cell.new}
  subject(:mid_cell) {Cell.new(4, 4)}

  it "initiazlises dead" do
    expect(cell.living?).to eq(false)
    expect(cell.next_living?).to eq(false)
  end

  it "shows cell location" do
    expect(mid_cell.show_location).to eq([4][4])
  end
end
