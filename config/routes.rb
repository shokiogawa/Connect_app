Rails.application.routes.draw do


  root 'users#index'
  resources :users
  resources :loads
  resources :toppages, only: [:index]
  resources :parents
end
