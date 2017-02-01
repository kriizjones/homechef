Rails.application.routes.draw do
  devise_for :users
  root controller: :landing, action: :index
  resources :dishes, only: [:index, :show]
  resources :checkout, only: [:index]
  resources :charges, only: [:create]
  post :add_to_order, controller: :orders, action: :add_to_order
  post :remove_from_order, controller: :checkout, action: :delete


# You can have the root of your site routed with "root"
  root 'home#index'
  get 'sign-up' > 'home#sign_up'

end