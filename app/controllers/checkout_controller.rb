class CheckoutController < ApplicationController
  def index
    @dishes = Order.last.shopping_cart_items.all
    @total_amount = Order.last.total
  end

  def destroy
    order = Order.last
    dish = Dish.find(params[:dish_id])
    order.remove(dish)
    flash[:notice] = "Removed dish from order"
    redirect_back(fallback_location: checkout_index_path)
  end
end
