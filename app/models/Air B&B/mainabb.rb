require_relative "./guest.rb"
require_relative "./trip.rb"
require_relative "./listing.rb"

room1 = Listing.new("room1", "Houston")
room2 = Listing.new("room2", "Dallas")
John = Guest.new("John")
Gary = Guest.new("Gary")
Sam = Guest.new("Sam")
trip1 = Trip.new(room1, Gary, "Gary", "room1")
trip2 = Trip.new(room1, Sam, "Sam", "room1")
trip3 = Trip.new(room2, Gary, "Gary", "room2")
#puts trip1.guests
#puts trip1.listing
#puts Trip.all
#puts Gary.listings
#puts Gary.trips
#puts Gary.trip_count
#puts Guest.all
###puts Guest.pro_traveller(1)
#puts room1.guests
#puts room1.trips
#puts room1.trip_count
#puts Listing.all
#puts Listing.find_all_by_city("Houston")
#puts Listing.most_popular
puts Guest.find_all_by_name(Gary)
#puts Gary.name
