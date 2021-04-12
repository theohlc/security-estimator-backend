Rails.application.routes.draw do
  resources :properties
  resources :buildings

  get 'properties/:id/cost', to: 'properties#cost'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
