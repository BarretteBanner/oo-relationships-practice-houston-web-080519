#require_relative "../lib/artist.rb"
require_relative "./driver.rb"
require_relative "./ride.rb"
require_relative "./passenger.rb"


Mike = Driver.new("Mike")
Paul = Driver.new("Paul")
Jessica = Driver.new("Jessica")
Sarah = Driver.new("Sarah")
Anthony = Passenger.new("Anthony")
Joe = Passenger.new("Joe")
Jim = Passenger.new("Jim")
ride1 = Ride.new(Mike, Anthony, 20, "Ride 1")
ride2 = Ride.new(Mike, Joe, 23, "Ride 2")
ride3 = Ride.new(Paul, Joe, 50, "Ride 3")
ride4 = Ride.new(Jessica, Jim, 100, "Ride 4")
#puts Driver.all_drivers
#puts Jim.all_passengers
#puts Mike.rides_driver
#puts Mike.passengers
#puts Driver.mileage_cap(4)
#puts ride1.passenger.name
#puts ride1.driver.name
#puts Ride.average_distance
#puts Passenger.all_passengers
#puts Jim.rides_passenger
#puts Jim.total_distance
puts Passenger.premium_members(30)