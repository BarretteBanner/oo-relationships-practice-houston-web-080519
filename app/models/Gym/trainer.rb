class Trainer
    attr_accessor :trainer_name
    @@all = []
    def initialize(trainer_name)
        @trainer_name = trainer_name
        @@all << @trainer_name
    end

    def self.all
        @@all
    end


    def self.most_clients
       
        most = 0
        name = nil
        Trainer.all.each do |guy|
            array = []
            puts "iterating through #{guy}"
            Client.all.each do |client|
                if client.trainer_name == guy
                    array << client
                end
            end
            puts "#{guy} has #{array.length} clients"
            if array.length > most 
                puts "#{guy} has the most so far"
                most = array.length
                name = guy
                puts "#{name} has #{most} this is the data"
            end
        end
        return name
    end
end