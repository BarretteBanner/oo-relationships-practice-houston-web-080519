class Movie
    attr_reader :movie_name, :actor_array, :character_array
    
    @@all = []
    def initialize(movie_name, actor_array, character_array)
        @movie_name = movie_name
        @actor_array = actor_array
        @character_array = character_array
        #@character = character
        @@all << self
    end

    def self.all
        @@all
    end

    def actor
        array = []
        @actor_array.each do |actor|
            array << actor
        end
    end

    def actors_in
        array = []
        @actor_array.each do |actor|
            array << actor 
        end
        number_actors = array.length
    end

    def self.most_actors
        number = 0
        movie_with_most = nil
        Movie.all.each do |movie|
            if movie.actors_in > number
                number = movie.actors_in
                movie_with_most = movie
            end
        end
        return "#{movie_with_most} has the most actors with #{number} actors!"
    end
end

