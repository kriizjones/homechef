class Api::V1::CheckoutController < ApiController
  before_action :authenticate_api_v1_user!

  def index
    user = current_api_v1_user
    @order = user.orders.where(finalized: false).last
    if @order == nil || @order.shopping_cart_items.count == 0
      render json: { message: "Something went wrong" }, status: :error
    else
      render 'show'
    end
  end
end