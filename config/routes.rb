Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "restaurants", to: "restaurants#index", as: :restaurants
  # get 'restaurants/new', to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create", as: :create_restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  resources :restaurants do
    resources :reviews, only: [:create]
  end
end
