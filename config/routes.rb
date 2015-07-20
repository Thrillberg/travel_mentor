Rails.application.routes.draw do
  root 'pages#front'
  get '/home', to: 'conversations#index'

  get '/register', to: 'users#new', as: 'register'

  get '/sign_in', to: 'sessions#new', as:'sign_in'
  post '/sign_in', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'
  get '/sign_out', to: 'sessions#destroy'

  get 'forgot_password', to: 'forgot_passwords#new'
  resources :forgot_passwords, only: [:create]

  get 'forgot_password_confirmation', to: 'forgot_passwords#confirm'

  resources :password_resets, only: [:show, :create]
  get 'expired_token', to: 'pages#expired_token'

  resources :users, only: [:create, :show]

  get 'interests', to: 'interests#index'
  resources :interests, only: [:create, :destroy]

  resources :conversations do
    resources :messages
  end
end