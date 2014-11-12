Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :customers
  resources :locations
  get 'customers' => 'customers#index'
  get 'locations' => 'locations#index'
  #get 'customers/new' => 'customers#new'
end
