class CashRegister

  attr_accessor :total, :last, :items, :discount

  def initialize(discount = 0)
    @total = 0
    @last = 0
    @items = []
    @discount = discount
  end

  def add_item(title, cost, quantity = 1)
    for i in 1..quantity do @items.push(title) end
    @total += cost * quantity
    @last = cost * quantity
    p @items
  end

  def apply_discount
    if @discount != 0
      @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    if @last != 0 then @total -= @last end
  end
end
