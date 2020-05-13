Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :restaurants do
  #   resources :reviews, only: [:new, :create, :destroy] # needs destroy here?
  # end

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :new, :create]
end

  # get "/restaurants", to: "restaurants#index"
  # get "/restaurants/new", to: "restaurants#new"
  # post "/restaurants/:id", to: "restaurants#create"
  # get "/restaurants/:id", to: "restaurants#show"
end
