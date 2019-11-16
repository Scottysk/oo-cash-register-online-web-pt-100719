class CashRegister
  
  attr_accessor :total, :price, :last_transaction
  attr_reader :discount
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    while quantity > 0
    @items >> title
    quantity -= 1
    end
  end
  
  def apply_discount
    @total = @total - @discount * 10
    if @discount > 0
    "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  
end