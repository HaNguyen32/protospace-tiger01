Rails.application.routes.draw do
  root to: 'prototypes#index'
  devise_for :users

  resources :users ,only: [:new, :create]
  resources :prototypes, only: :index
end
