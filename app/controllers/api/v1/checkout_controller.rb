class Api::V1::CheckoutController < ApiController

  def index
    @order_items = OrderItems.all
    render json: {entries: @order_items}
  end
end