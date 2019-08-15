class Client
    attr_accessor :client_name, :trainer_name, :location
    @@all = []
    def initialize(client_name, location, trainer_name = nil)
        @client_name = client_name
        @trainer_name = trainer_name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        @trainer_name = trainer
    end
end