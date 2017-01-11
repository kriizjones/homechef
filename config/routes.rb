Rails.application.routes.draw do
  resources :dishes, only: [:index, :show]
end
