require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @counter = 1
  end

  def release_bike
    raise "No more bikes available" if @counter==0
    if @counter > 0
      @counter -= 1
      Bike.new
    end
  end

  def dock(bike)
    @counter += 1
    @bike = bike
  end

end
