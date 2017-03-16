Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
  get 'login' => :new
  post 'login' => :create
  delete 'logout' => :destroy
  end 

  resources :orders
  resources :line_items
  resources :carts
  resources :users
  #root 'products#index'
  root  'store#index', as: 'store_index'
   resources :products
end
