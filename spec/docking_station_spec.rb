require 'docking_station'
require 'bike'

describe DockingStation do
  it "releases a bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "checks if bike exists and is working" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it "docks a bike at station" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

end
