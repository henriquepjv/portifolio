Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'home#index'

  resources :contacts, only: [:new, :create] do
    collection do
      get 'about'
    end
  end
  resources :posts, only: [:index, :show]
end
