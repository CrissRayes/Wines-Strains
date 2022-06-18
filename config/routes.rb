Rails.application.routes.draw do
  resources :wine_oenologists
  devise_for :users
  resources :positions
  resources :oenologists
  resources :strains
  resources :wines
  root "home#index"
end
