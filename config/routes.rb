Rails.application.routes.draw do
  resources :tweets
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
