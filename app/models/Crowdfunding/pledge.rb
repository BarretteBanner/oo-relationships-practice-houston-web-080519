class Pledge
    attr_accessor :amount, :project, :user
    @@all = []
    @@donors = []
    def initialize(amount, project, person)
        @amount = amount
        @project = project
        @user = person
        @@donors << user.name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.donors
        @@donors
    end

    
end

