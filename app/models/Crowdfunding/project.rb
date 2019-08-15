class Project
    attr_accessor :project_name, :pledge_goal, :discription
    @@all = []
    def initialize(project_name, pledge_goal, discription)
        @project_name = project_name
        @pledge_goal = pledge_goal
        @discription = discription
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.no_pledges
        array1 = []
        array2 = []
        answer = nil
        Pledge.all.each do |pledge|
            array1 << pledge.project
        end
        Project.all.each do |project|
            array2 << project
        end
        a = array1
        b = array2
        #puts a
        #puts b 
        answer = a-b | b-a 
        answer.each do |project|
            answer = project.project_name
        end
        answer
    end

    def self.above_goal
        array2 = []
        Project.all.each do |project|
            array1 = []
            Pledge.all.each do |pledge|
                if pledge.project == project
                    array1 << pledge.amount
                end 
            end
            if array1.sum > project.pledge_goal
                array2 << project
            end
        end
        return array2.uniq
    end

    def self.most_backers
        most = 0
        name = nil
        Project.all.each do |project|
            array1 = []
            Pledge.all.each do |pledge|
                if pledge.project == project
                    array1 << project 
                end
            end
            if array1.length > most
                most = array1.length
                name = project.project_name
            end
        end
        name
    end

    def status
        array = ['Things are going to plan ', "We've run into a few issues, but nothing we can't fix" , "The company is failing"]
        return array.sample
    end
end
 