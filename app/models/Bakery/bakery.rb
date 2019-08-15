class Bakery
    attr_accessor :name, :dessert_array
    @@all = []
    def initialize(name, dessert_array)
        @name = name
        @dessert_array = dessert_array
        @@all << self
    end

    def self.all
        @@all
    end

    def average_calories
        total = 0
        @dessert_array.each do |dessert|
            total += dessert.calories
        end
        total / @dessert_array.length
    end

    def desserts
        array = nil
        array2 = []
        Bakery.all.each do |bakery|
            if bakery = self
                array = bakery.dessert_array
            end
        end
        array.each do |dessert_item|
            array2 << dessert_item
        end
    end

    def ingredients
        array1 = []
        desserts = self.desserts
        desserts.each do |dessert|
            x = dessert.ingredients_array
            x.each do |y|
                array1 << y
            end
        end
        array1.uniq
    end

end