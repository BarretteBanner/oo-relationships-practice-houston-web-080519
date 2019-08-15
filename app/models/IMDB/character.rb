class Character
    def self.most_appearances
        name = nil
        most = 0
        Actor.all2.each do |actor|
            array1 = []
            Movie.all.each do |movie|
                if movie.actor_array.include?(actor.actor_name)
                    array1 << movie
                end
                if array1.length > most
                    most = array1.length
                    name = actor
                end
            end
        end
        name.actor_name
    end
        
end