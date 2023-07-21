Rails.application.routes.draw do
  root to: 'prototypes#index'
  devise_for :users

  resources :prototypes, only: [:index, :new, :create, :show, :destroy]
  resources :users, only: :show
end
