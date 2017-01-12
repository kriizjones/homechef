Rails.application.routes.draw do
  root controller: :landing, action: :index
  resources :dishes, only: [:index, :show]
	post :add_to_order, controller: :orders, action: :add_to_order
end
