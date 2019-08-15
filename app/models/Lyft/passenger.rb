class Passenger
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_passengers
        array = []
        Passenger.all.each do |name|
            array.push(name.name)
        end 
        array
    end

    def rides_passenger
        array = []
        Ride.all.each do |ride|
            if ride.passenger == self
                array << ride.ride_number
            end
        end  
        array
    end

    def total_distance
        array = []
        Ride.all.each do |ride|
            if ride.passenger == self
                array << ride.distance
            end
        end
        array.sum
    end
    
    def self.premium_members(distance_variable)
        #takes an argument of a distance (float) and returns all 
        #drivers who have exceeded that mileage
        long_dist_riders = []

        Passenger.all.each do |passenger|
            #puts "driver is: #{driver.name}"
            array = []
            Ride.all.each do |ride|
                #puts "ride is: #{ride}"
                #iterate through all drivers
                #count up distance based on the driver
                #store those sums in a new array
                if ride.passenger == passenger
                    #puts "#{ride.driver.name} == #{driver.name} ?????"
                    array << ride.distance
                end
            end
            sum = array.sum 
            #conditional for adding to long_dist_driver
            if sum > distance_variable
                #puts "sum is: #{sum}"
                long_dist_riders << passenger.name 
            end

            
        end#first loop
        
        #puts "our return is #{long_dist_drivers}"
        long_dist_riders
    end
end
    