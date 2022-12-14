Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  resources :robots do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :index, :show, :edit, :update]
  resources :pages, only: :index
end
  # resources :bookings, only: [:destroy, :index, :show]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
