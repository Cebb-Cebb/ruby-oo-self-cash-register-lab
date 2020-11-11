require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :new_items

    
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @new_items = []
  end 

  def add_item(item, price, quantity= 1)
    self.total += price * quantity
    quantity.times do 
      @items << item
    end 
    @new_items = price * quantity
  end 
   
  def apply_discount
    if @discount > 0 
      @total -= (@total *(@discount / 100.to_f))
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end 

  def void_last_transaction
    self.total = self.total - self.new_items
    self.total
    # binding.pry 
  end 


    


end 



        

      

  

