Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :customers
  get 'customers' => 'customers#index'
  #get 'customers/new' => 'customers#new'
end
