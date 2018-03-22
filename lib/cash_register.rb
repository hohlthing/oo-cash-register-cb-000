class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times { @cart << item }
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to #{@total}."
    end
  end

  def items
    @cart
  end
end
