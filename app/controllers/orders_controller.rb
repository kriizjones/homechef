class OrdersController < ApplicationController
  def add_to_order
    # binding.pry
    order = Order.create
    dish = Dish.find(params[:dish_id])
    order.add(dish, dish.price)
    flash[:notice] = "Successfully added to order"
  end
end
