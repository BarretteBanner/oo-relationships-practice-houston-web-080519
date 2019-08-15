require_relative "./movie.rb"
require_relative "./actor.rb"
require_relative "./character.rb"
require_relative "./show.rb"

#matt_damon = Actor.new("Matt Damon", "Good Will Hunting", "Will Hunting")
#ben_affleck = Actor.new("Ben Affleck", "Good Will Hunting", "Chuckie Sullivan")
#robin_williams = Actor.new("Robin Williams", "Good Will Hunting", "Sean Maguire")
#monica_potter = Actor.new("Monica Potter", "Patch Adams", "Carin")
#daniel_london = Actor.new("Daniel London", "Patch Adams", "Truman")
#ethan_hawke = Actor.new("Ethan Hawke", "Dead Poets Society", "Todd Anderson")
#robert_sean_leonard = Actor.new("Robert Sean Leonard", "Dead Poets Society", "Neil Perry")
#omar_epps = Actor.new("Omar Epps", "House M.D.", "Eric Foreman")
#jake_mcdorman = Actor.new("Jake McDorman", "Limitless", "Brian Finch")
#anna_friel = Actor.new("Anna Friel", "Limitless", "Melissa")
#bradley_cooper = Actor.new("Bradley Cooper", "Limitless", "Eddie Morra")
#abbie_cornich = Actor.new("Abbie Cornich", "Limitless", "Lindy")
#robert_de_niro = Actor.new("Robert De Niro", "Limitless", "Carl Van Leon")
#### movies
#good_will_hunting = Movie.new("Good Will Hunting", "Robin Williams", "Sean Maguire")
#patch_adams = Movie.new("Patch Adams", "Robin Williams", "Sean Maguire")

#puts Actor.characters
movie1 = Movie.new("movie1", ["actor1", "actor2", "actor3"], ["Patch Adams", "Carlin", "Truman"])
movie2 = Movie.new("movie2", ["actor1", "actor2"], ["John Keating", "Todd Anderson", "Neil Perry"])
show1 = Show.new("movie1", ["actor1", "actor2"])
actor1 = Actor.new("actor1", ["John Keating", "Patch Adams"])
actor2 = Actor.new("actor2", ["Neil Perry"])
#puts movie1.actors_per
puts Movie.most_actors
#puts movie1.actors_in
puts show1.on_the_big_screen
puts Actor.most_characters
puts Character.most_appearances

