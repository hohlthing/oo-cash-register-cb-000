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
end
