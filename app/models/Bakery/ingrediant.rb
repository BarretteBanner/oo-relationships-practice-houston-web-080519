class Ingredient
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << @name
    end

    def self.all 
        @@all 
    end

    def self.find_by_name(ingredient_string)
        Ingredient.all.select do |ingredient|
            ingredient.include?(ingredient_string)
        end
    end

    def dessert
        array1 = []
        Dessert.all.each do |dessert|
            if dessert.ingredients_array.include?(self.name)
                array1 << dessert
            end
        end
        array1
    end

    def bakery
        array3 = []
        Bakery.all.each do |bakery|
            array1 = []
            array2 = []
            array2 << bakery.desserts
            array2.each do |dessert_array|
                dessert_array.each do |dessert|
                    if dessert.ingredients_array.include?(self.name)
                        array3 << bakery
                    end
                end
            end
        end
        array3
    end

end