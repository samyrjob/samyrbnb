Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resource :profile, only: :show

  resources :flats, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end

  namespace :owner do
    resources :flats, only: %i[new create edit update destroy]
    resources :bookings, only: %i[] do
      member do
        get :accepte
        get :decline
      end
    end
  end
end
