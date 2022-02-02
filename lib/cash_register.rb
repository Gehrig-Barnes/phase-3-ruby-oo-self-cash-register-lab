require "pry"
class CashRegister
    attr_accessor :total
    attr_accessor :discount
    attr_accessor :items
    attr_accessor :previous_total
    

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.previous_total = price * quantity
        self.total += previous_total
        
    end

    def apply_discount
        if self.discount != 0 
            discount_percent = (100.0 - self.discount.to_f) / 100
            self.total = (self.total * discount_percent).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items

    end

end

binding.pry