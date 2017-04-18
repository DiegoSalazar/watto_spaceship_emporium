Rails.application.routes.draw do
  resources :admin
  resources :products
  root 'products#index'
end
