Rails.application.routes.draw do
  devise_for :users
  root :to => "pages#index"
  resources :sales
  resources :products
  resources :product_prices
  resources :employees
  resources :dealers
  resources :dealer_stores
  resources :agencies
end
