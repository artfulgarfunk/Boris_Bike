require 'docking_station'
require 'bike'

describe DockingStation do
  it "releases a bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "checks if bike exists and is working" do
    expect(subject.release_bike).to be_working
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it "docks a bike at station" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  it "no more bikes available" do
    station = DockingStation.new
    station.release_bike
    expect{ station.release_bike }.to raise_error("No more bikes available")
  end

end
