# frozen_string_literal: true

Rails.application.routes.draw do
  # Authentication
  get  'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get  'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  resources :sessions, only: [:index, :show, :destroy]
  resource  :password, only: [:edit, :update]
  namespace :identity do
    resource :email,              only: [:edit, :update]
    resource :email_verification, only: [:show, :create]
    resource :password_reset,     only: [:new, :edit, :create, :update]
  end
  namespace :two_factor_authentication do
    resource :challenge, only: [:new, :create]
    resource :totp,      only: [:new, :create]
  end
  
  # User settings page
  get 'settings', to: 'pages#settings'

  # Default route
  root "pages#index"
end
