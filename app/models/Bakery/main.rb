require_relative "./bakery.rb"
require_relative "./dessert.rb"
require_relative "./ingrediant.rb"

ingrediant1 = Ingredient.new("chocolate chips")
ingrediant2 = Ingredient.new("olive")
ingrediant3 = Ingredient.new("beans")
ingrediant4 = Ingredient.new("almond milk")
ingrediant5 = Ingredient.new("eggs")
ingrediant6 = Ingredient.new("flour")
ingrediant7 = Ingredient.new("sugar")
ingrediant8 = Ingredient.new("cream")

dessert1 = Dessert.new("Cookies", ["eggs", "almond milk", "chocolate chips"], 350,)
dessert2 = Dessert.new("Cake", ["eggs", "almond milk", "chocolate chips", "flour", "sugar"], 460)
dessert3 = Dessert.new("Ice Cream", ["sugar", "almond milk", "chocolate chips", "cream"], 400)

bakery1 = Bakery.new("Cool Bakery", [dessert1, dessert2])
bakery2 = Bakery.new("Awesome Bakery", [dessert2, dessert3])
bakery3 = Bakery.new("Unique Bakery", [dessert3, dessert1])


#puts Ingredient.all
#puts Ingredient.find_by_name("milk")
#puts Dessert.all
#puts dessert1.calories
#puts Bakery.all
#puts bakery1.average_calories
#puts bakery1.desserts
#puts bakery1.ingredients
#puts dessert3.ingredients
#puts dessert3.bakery
#puts ingrediant1.dessert
puts ingrediant1.bakery

