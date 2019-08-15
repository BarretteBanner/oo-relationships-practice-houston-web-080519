require 'pry'
class Driver
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

# returns all passengers a driver has driven
    def passengers
        array = []
        Ride.all.each do |ride|
            if ride.driver == self
                array << ride.passenger.name
            end
        end
        array
    end

# returns which rides the driver has completed
    def rides_driver
        array = []
        Ride.all.each do |ride|
            if ride.driver == self
                array << ride.ride_number
            end
        end  
        array
    end

# print out names of all drivers
    def self.all_drivers
        array = []
        Driver.all.each do |name|
            array.push(name.name)
        end 
        array
    end

    def self.mileage_cap(distance_variable)
        #takes an argument of a distance (float) and returns all 
        #drivers who have exceeded that mileage
        long_dist_drivers = []

        Driver.all.each do |driver|
            #puts "driver is: #{driver.name}"
            array = []
            Ride.all.each do |ride|
                #puts "ride is: #{ride}"
                #iterate through all drivers
                #count up distance based on the driver
                #store those sums in a new array
                if ride.driver == driver
                    puts "PE"
                    binding.pry
                    #puts "#{ride.driver.name} == #{driver.name} ?????"
                    array << ride.distance
                end
            end
            sum = array.sum 
            #conditional for adding to long_dist_driver
            if sum > distance_variable
                #puts "sum is: #{sum}"
                long_dist_drivers << driver.name 
            end

            
        end#first loop
        
        #puts "our return is #{long_dist_drivers}"
        long_dist_drivers
    end
    
end

return Driver.mileage_cap(50.0)