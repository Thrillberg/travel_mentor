Rails.application.routes.draw do
  root 'pages#front'
  get '/home', to: 'cities#index'

  get '/register', to: 'users#new', as: 'register'

  get '/sign_in', to: 'sessions#new', as: 'sign_in'
  post '/login', to: 'sessions#create'
  delete '/sign_out', to: 'sessions#destroy'

  resources :users, only: [:create, :show]
end