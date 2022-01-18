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

describe DockingStation do
  it "Dock bike" do
    docking_station = DockingStation.new
    new_bike = Bike.new
    docking_station.dock(new_bike)
    expect(docking_station.bike_storage).to include new_bike
  end
end

describe DockingStation do
  it "dock 2" do

    docking_station = DockingStation.new
    expect(docking_station.dock("test")).to raise_error("test")
  end

end