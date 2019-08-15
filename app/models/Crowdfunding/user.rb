class User
    attr_accessor :name
    @@all =[]
    @@usercreateproject = []
    def initialize(name)
        @name = name
        @@all << @name
    end

    def self.all
        @@all
    end

    def self.usercreateproject
        @@usercreateproject
    end

    def make_pledge(amount, project)
        Pledge.new(amount, project, self)
    end

    def self.highest_pledge
        highest = 0
        user = nil
        Pledge.all.each do |pledge|
            if pledge.amount > highest
                highest = pledge.amount
                user = pledge.user
            end
        end
        return user
    end

    def self.multi_pledges
        array1 = []
        User.all.each do |user|
            array2 = []
            Pledge.donors.each do |donor|
                puts "User is #{user}"
                puts "Donor is #{donor}"
                if user == donor
                    puts "Yep"
                    array2 << user
                end
            end 
            if array2.length > 1
                array1 << user
            end
        end
        return array1
    end

    def create_project(project_name, pledge_goal, discripton)
                Project.new(project_name, pledge_goal, discripton)
                @@usercreateproject << self
    end

    def self.project_creator
        User.usercreateproject.uniq
    end
end
