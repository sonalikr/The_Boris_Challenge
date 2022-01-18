require './lib/DockingStation.rb'
describe DockingStation do 
  it { is_expected.to respond_to :release_bike }
end

describe "Test" do
  it "test" do
    new_dock = DockingStation.new
    new_bike = new_dock.release_bike
    expect(new_bike).not_to eq(nil)
    expect(new_bike).to respond_to(:working?)
  end
end