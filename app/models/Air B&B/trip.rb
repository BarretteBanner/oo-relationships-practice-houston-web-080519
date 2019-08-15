class Trip
    attr_accessor :listing, :guest, :guest_name, :listing_name
    @@all = []
    def initialize(listing, guest, guest_name, listing_name)
        @listing = listing
        @guest = guest
        @guest_name = guest_name 
        @listing_name = listing_name
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        @guest_name
    end

    def listing
        @listing_name
    end

end