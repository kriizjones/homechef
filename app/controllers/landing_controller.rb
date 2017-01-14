class LandingController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def checkout
    @dishes = Order.last.shopping_cart_items.all
    @total_amount = Order.last.total
  end
end
