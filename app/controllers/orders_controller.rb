class OrdersController < ApplicationController

def new
  
  @cart_items = current_cart.cart_items
    @total_price = 0
    @cart_items.each do |price|
      @total_price += price.menu.price * price.quantity
    end
    @order = Order.new
end

end