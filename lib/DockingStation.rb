
class DockingStation

  attr_reader :bike_storage

  def initialize
    @bike_storage = []
    until @bike_storage.length > 5
      @bike_storage.push(Bike.new)
    end
  end

  def release_bike()
    if @bike_storage.length() != 0
      puts "One Bike Removed"
      @bike_storage.pop
    else
      fail "No Bikes Left!"
    end
  end

  def dock(bike)
    if bike.is_a? Bike
      puts "bike docked"
      @bike_storage.push(bike)
    else
      raise 
    end
  end
end