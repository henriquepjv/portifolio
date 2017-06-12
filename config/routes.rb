Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'home#index'

  resources :contacts, only: [:new, :create]
  resources :posts, only: [:show]
end
