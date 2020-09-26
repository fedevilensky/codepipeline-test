Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:create]
  resources :organizations, only: [:create]
  resources :bugs, only: [:create, :index, :show]
end
