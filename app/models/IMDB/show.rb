class Show
    attr_accessor :name, :actor_array
    @@all = []
    def initialize(name, actor_array)
        @name = name
        @actor_array = actor_array
        @@all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        movie_that_matches = []
        Movie.all.each do |movie|
            if movie.movie_name == self.name
                movie_that_matches << movie.movie_name
            end
        end
        return "The movie #{movie_that_matches}'s name matches with our show!"
    end
end