class CheckoutController < ApplicationController
  def index
    @dishes = Order.last.shopping_cart_items.all
    @total_amount = Order.last.total
  end
end
