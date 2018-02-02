Rails.application.routes.draw do
  root 'home#index'
  resources :games, only: %i(create show update index)
end

