Rails.application.routes.draw do


  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'users#index'
  resources :users
  resources :loads
  resources :toppages, only: [:index]
  resources :parents
  resources :sessions, only: [:new, :create, :destroy]
end
