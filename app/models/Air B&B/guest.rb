
class Guest
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << name
    end

    def self.all
        @@all
    end

    def listings
        array = []
        Trip.all.each do |trip|
            if trip.guest == self
                array << trip.listing
            end
        end
        array
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def trip_count
        trips.count
    end
# returns answer for pro traveller
    def self.pro_traveller(frequency_variable)
        #takes an argument of a distance (float) and returns all 
        #drivers who have exceeded that mileage
        long_dist_riders = []

        Guest.all.each do |guest|
            #puts "driver is: #{driver.name}"
            array = 0
            Trip.all.each do |trip|
                #puts "ride is: #{ride}"
                #iterate through all drivers
                #count up distance based on the driver
                #store those sums in a new array
                if trip.guest == guest
                    #puts "#{ride.driver.name} == #{driver.name} ?????"
                    array += 1
                end
            end
            puts array
            #conditional for adding to long_dist_driver
            if array > frequency_variable
                #puts "sum is: #{sum}"
                long_dist_riders << trip.guest 
            end
        end#first loop
        #puts "our return is #{long_dist_drivers}"
        long_dist_riders
    end

    def self.find_all_by_name(name_variable)
        array = []
        Guest.all.each do |guest|
            array << guest
        end
        array.each do |person|
            person.name
        end
    end
end

puts Guest.pro_traveller(1)