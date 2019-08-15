require_relative "./user.rb"
require_relative "./project.rb"
require_relative "./pledge.rb"
##users can ask certain projects how the progress is and they'll get back a random message from an array
user1 = User.new("Jake")
user2 = User.new("Morgan")
#good ones below
project1 = Project.new("Teach Youth To Code", 49000, "To teach the world how to code.")
project2 = Project.new("Build Houses In Africa", 2000, "Everyone deserves a home.")
project3 = Project.new("Make The Best Coffee", 50000, "Finding the best coffee from around the world.")

#user1.create_project("Teach Youth To Code", 100000, "To teach the world how to code.")
#user1.create_project("Build Houses In Africa", 1000000, "Everyone deserves a home.")
#user2.create_project("Make The Best Coffee", 50000, "Finding the best coffee from around the world.")
#puts Project.all
#pledge1 = user1.make_pledge(10000, project1)
#pledge2 = user2.make_pledge(500, project1)
#pledge3 = user2.make_pledge(600, project2)
##test
pledge1 = user1.make_pledge(50000, project1)
pledge2 = user2.make_pledge(5000, project1)
pledge3 = user2.make_pledge(600000, project2)
###test




#puts user1.name
#puts project1.project_name
#puts project1.pledge_goal
#puts project1.discription
#puts Pledge.all
#puts Pledge.donors
#puts User.highest_pledge
#puts User.multi_pledges
#puts User.project_creator
#puts Project.no_pledges
#puts Project.above_goal
#puts Project.most_backers
#puts pledge1.project.project_name
#puts pledge1.user
puts project1.status

