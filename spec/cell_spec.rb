require_relative '../lib/cell.rb'

describe 'Cell' do
  subject(:cell) {Cell.new}
  subject(:mid_cell) {Cell.new(4, 4)}
  it "initiazlises dead" do
    expect(cell.living?).to eq(false)
  end
  it "shows cell location" do
    expect(mid_cell.show_location).to eq([4, 4])
  end

  describe '#living_toggle' do
    it "toggles false to true" do
      mid_cell.living_toggle
      expect(mid_cell.living?).to eq(true)
    end
    it "toggles true to false" do
      mid_cell.living_toggle
      mid_cell.living_toggle
      expect(mid_cell.living?).to eq(false)
    end
  end
  describe '#next_tick' do
    xit "cell becomes dead when 'overpopulated'" do

    end
    xit "cell becomes dead when 'underpopulated'" do

    end
    xit 'cell becomes alive when in "reproduction"' do

    end
  end
end
