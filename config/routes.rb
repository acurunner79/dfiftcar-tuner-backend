Rails.application.routes.draw do
  resources :cars
  resources :users
  resources :suspensions
  resources :rollcages
  resources :hand_brakes
  resources :differentials
  resources :clutches
  resources :engines
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
