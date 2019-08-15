class Location
    attr_accessor :city
    @@all =[]
    def initialize(city)
        @city = city
        @@all << @city
    end

    def self.all
        @@all
    end
    
    def self.least_clients
        l1 = 0
        l2 = 0
        l3 = 0
        Client.all.each do |client|
            if client.location == "Houston"
                l1 += 1
            elsif client.location == "LA"
                l2 += 1
            elsif client.location == "Miami"
                l3 += 1
            end
        end
        if l1 < l2 && l1 < l2
            puts "Houston"
        elsif
            l2 < l1 && l2 < l3
            puts "LA"
        else
            puts "Miami"
        end
    end
end