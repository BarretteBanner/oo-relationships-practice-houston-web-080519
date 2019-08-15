class Dessert
    attr_accessor :name, :ingredients_array, :calories
    @@all = []
    def initialize(name, ingredients_array, calories)
        @name = name
        @ingredients_array = ingredients_array
        @calories = calories
        @@all << self
    end

    def self.all
        @@all 
    end

    def calories
        @calories
    end

    def ingredients
        self.ingredients_array
    end

    def bakery
        array1 = []
        Bakery.all.each do |bakery|
            x = bakery.desserts
            x.each do |y|
                if y == self
                    array1 << bakery
                end
            end
        end
        array1
    end
end