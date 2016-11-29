Rails.application.routes.draw do

  resources :hotels
  root 'devise#users/sign_in'


  resources :twitter_accounts
  resources :tweets
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'jobs#index', as: :authenticated_root
      resources :jobs
    
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end



end
