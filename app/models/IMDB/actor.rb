class Actor
    attr_accessor :actor_name, :character_array
    
    @@allactor_name = []
    @@all = []
    def initialize( actor_name, character_array)
        @character_array = character_array
        @actor_name = actor_name
        @@allactor_name << actor_name
        @@all << self
    end

    
    def self.all2
        @@all
    end

    def self.all3
        @@allactor_name
    end

    def self.most_characters
        name = nil
        most = 0
        Actor.all2.each do |actor|
            array1 = []
            array2 = []
            #puts "0"
            Movie.all.each do |movie|
                #puts ".5"
                if movie.actor_array.include?(actor.actor_name)
                    array1 << movie
                    #puts "1"
                end
            end
            array1.each do |movie|
                x = movie.character_array
                y = actor.character_array
                shared_character = x & y
                #puts "shared_character"
                #shared_character = movie.character_array & actor.character_array
                array2 << shared_character
            end
            if array2.length > most 
                most = array2.length
                name = actor
            end
        end
        return name.actor_name
    end




   
end