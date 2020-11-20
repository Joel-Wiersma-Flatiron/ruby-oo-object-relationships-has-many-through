class Meal
    attr_accessor :waiter, :customer, :total, :tip
    @@all = []
    def initialize(waiter, customer, total, tip)
        self.waiter = waiter
        self.customer = customer
        self.total = total
        self.tip = tip
        @@all << self
    end

    def self.all
        @@all
    end
end