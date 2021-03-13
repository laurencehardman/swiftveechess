Rails.application.routes.draw do
  get 'players/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # User management and authentication -
  # We won't be using authentication, but if we were, we would have the necessary routes for user registration, sign in, session management, etc.

  # get 'register', to: 'users#register', as: :register_user
  # post 'register', to: 'users#create', as: :create_user
  # get 'login', to: 'sessions#new', as: :new_session
  # post 'login', to: 'sessions#create', as: :sign_in
  # get 'users/register'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'logout', to: 'sessions#destroy', as: :sign_out

  root to: 'players#index'
end
