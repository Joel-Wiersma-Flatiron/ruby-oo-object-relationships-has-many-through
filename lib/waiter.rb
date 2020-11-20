class Waiter
    attr_accessor :name, :years_of_experience
    @@all = []
    def initialize(name, years_of_experience)
        self.name = name
        self.years_of_experience = years_of_experience
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        meal = Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select {|meal| meal.waiter == self}
    end

    def best_tipper
        top_tip = 0
        top_tipper = 0
        count = 0
        meals.each do |meal|
            if meal.tip > top_tip
                top_tipper = count
                top_tip = meal.tip
            end
            count += 1
        end
        meals[top_tipper].customer
    end
end