Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  
  resources :users
  resources :products
  #root 'products#index'
  root  'store#index'
end
