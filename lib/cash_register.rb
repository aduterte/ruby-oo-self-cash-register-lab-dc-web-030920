class CashRegister
    attr_accessor :discount, :total, :items
    def initialize( discount=0 )
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity=1)
        
        @total += price * quantity
        quantity.times { @items << title }
        @last_transaction = price * quantity
    end

    def apply_discount
        return "There is no discount to apply." if @discount == 0
        @total -= @total.to_f * (@discount.to_f / 100)
        "After the discount, the total comes to $#{@total.to_i}."
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end
