Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :variables
  resources :indefinitions
  resources :portraits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
