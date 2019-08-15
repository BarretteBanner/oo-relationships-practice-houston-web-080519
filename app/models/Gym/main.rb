require_relative "./location.rb"
require_relative "./client.rb"
require_relative "./trainer.rb"
barrette = Trainer.new("Barrette")
sam = Trainer.new("Sam")
mike = Trainer.new("Mike")

houston = Location.new("Houston")
la = Location.new("LA")
miami = Location.new("Miami")

John = Client.new("John", "Houston")
Kohl = Client.new("Kohl", "LA")
Gary = Client.new("Gary", "Miami")
George = Client.new("George",  "Houston")
Bryce = Client.new("Bryce", "LA")
Jose = Client.new("Jose", "Miami")
Mike = Client.new("Mike", "Houston")
Sarah = Client.new("Sarah", "Houston")
Susan = Client.new("Susan", "Houston")
Jessica = Client.new("Jessica", "LA")
Julie = Client.new("Julie", "Miami")

### start

John.assign_trainer("Sam")
Kohl.assign_trainer("Sam")
Gary.assign_trainer("Barrette")
George.assign_trainer("Barrette")
Bryce.assign_trainer("Barrette")
Jose.assign_trainer("Mike")
Mike.assign_trainer("Sam")
Sarah.assign_trainer("Barrette")
Susan.assign_trainer("Mike")
Jessica.assign_trainer("Mike")
Julie.assign_trainer("Barrette")
#puts John.location
#puts Location.least_clients

puts Trainer.most_clients

