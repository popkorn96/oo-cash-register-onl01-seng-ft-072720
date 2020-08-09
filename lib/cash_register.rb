class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction_amount
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end

  def add_item(title,price,quantity = 1)
    i = 0
    if i>quantity
      @items.push(title)
      i += 1
    else i<quantity
      @items.push(title)
      quantity.times do
      i += 1
    end
      @total = @total + price*quantity
      @last_transaction_amount = price*quantity
      @total
    end
  end
  
  def apply_discount()
    if @discount > 0 
      @total -= (@total*@discount)/100.to_f
      "After the discount, the total comes to $#{@total.to_i}."
    else @discount == 0 
      "There is no discount to apply."
    end
  end
  
  def items
   @items
  end
  
  def void_last_transaction
    self.total -= @last_transaction_amount
  end
end