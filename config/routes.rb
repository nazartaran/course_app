Rails.application.routes.draw do
  get 'log_in' => 'sessions#new'
  delete 'log_out' => 'sessions#destroy'
  get 'sign_up' => 'users#new'

  resources :products
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  root 'products#index'
end
