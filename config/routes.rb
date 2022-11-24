Rails.application.routes.draw do
  devise_for :users

  root to: "robots#index"
  resources :robots do
    # resources :bookings, only: [:new, :create]
    resources :bookings, except: [:destroy, :update, :edit]
    end
    resources :bookings, only: [:destroy, :update, :edit]
  end
  # resources :bookings, only: [:destroy, :index, :show]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
