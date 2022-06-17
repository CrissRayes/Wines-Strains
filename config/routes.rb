Rails.application.routes.draw do
  devise_for :users
  resources :strains
  resources :wines
  resources :oenologists
  resources :positions
  resources :oenologist_positions
  root "home#index"
end
