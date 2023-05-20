require "pry"

class CashRegister
  attr_accessor :discount, :total,  :transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end
  def add_item(title,price,quantity = 1)
    quantity.times {@items << title}
    @transaction = price * quantity
    quantity.times {@transactions << @transaction}
    @total += transaction
  end
  def apply_discount
    if discount > 0
    discount_amount = @total * (discount / 100.to_f)
    @total -= discount_amount.to_i
    "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."

    end
  end
  def items
    @items
  end
  def void_last_transaction
    @total -= @transactions.pop

    
  end
end

c1 = CashRegister.new(15)

