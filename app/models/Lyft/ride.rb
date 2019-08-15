class Ride
    attr_accessor :driver, :passenger, :distance, :ride_number
    @@all = []
    def initialize(driver, passenger, distance, ride_number)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @ride_number = ride_number
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def self.average_distance
        array = []
        Ride.all.each do |ride|
            array << ride.distance
        end
        sum = array.sum
        sum / Ride.all.length
    end
    
end

# create a ride


