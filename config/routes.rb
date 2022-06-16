Rails.application.routes.draw do
  devise_for :users
  resources :strains
  resources :wines
  root "home#index"
end
