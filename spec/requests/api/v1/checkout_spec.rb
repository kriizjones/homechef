require 'rails_helper'

RSpec.describe Api::V1::CheckoutController, type: :request do
  describe 'GET /v1/checkout' do
    describe 'the checkout screen ' do
      # it 'should not show any dishes if no dishes have been added to order' do
      #
      # end


      it 'or display all the dishes in this order that have not yet payed yet' do
        user = FactoryGirl.create(:user)
        dish = FactoryGirl.create(:dish)
        @order = Order.create(user: user, finalized: false)
        @order.add(dish, dish.price)

        get '/api/v1/checkout'
        @order_items = OrderItems.all
        render json: {entries: @order_items}
        expect(response_json['entries'].last.item['name']).to eq "Pizza"
        expect(response.status).to eq 200
      end
    end
  end
end