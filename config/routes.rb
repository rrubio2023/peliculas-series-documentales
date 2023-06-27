Rails.application.routes.draw do
  resources :movies, only: [:index, :new, :create]
  resources :series, only: [:index, :new, :create]
  resources :documentary_films, only: [:index, :new, :create]

  root 'movies#index'  
end