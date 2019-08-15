class Listing
    attr_accessor :listing, :city
    @@all = []
    def initialize(listing, city)
        @listing = listing
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        array = []
        Trip.all.each do |trip|
            if trip.listing == @listing
                array.push(trip.guest.name)
            end
        end
        array
    end

    def trips
        array = []
        Trip.all.each do |trip|
            if trip.listing == @listing
                array.push(trip)
            end
        end
        array
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        array = []
        Listing.all.each do |listing|
            if listing.city == city
                array << listing
            end
        end
        array
    end

    def self.most_popular
        array = []
        Listing.all.each do |listing|
            array << listing.city
        end
        answer = array.max_by {|i| array.count(i)}
        return answer
    end
end