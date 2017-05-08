Rails.application.routes.draw do
  root 'home#index'

  resources :contacts, only: [:new, :create]
end
