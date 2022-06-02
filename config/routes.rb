Rails.application.routes.draw do
  resources :strains
  resources :wines
  root "wines#index"
end
