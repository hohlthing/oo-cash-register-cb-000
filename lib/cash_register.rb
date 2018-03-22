class CashRegister
  attr_accessor :total, :discount, :cart, :previous_quantity, :previous_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @previous_total = @total
    @total += price * quantity
    @previous_quantity = quantity
    quantity.times { @cart << item }
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total = @previous_total
    @previous_quantity.times { cart.pop() }
  end

end
