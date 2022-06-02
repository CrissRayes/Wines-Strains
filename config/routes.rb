Rails.application.routes.draw do
  resources :strains
  resources :wines
  resources :wine_strains
  root "wines#index"
end
