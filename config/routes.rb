Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :dashboard
  get '/dashboard', to: 'dashboard#index'

  resources :users
  get '/sign-up', to: 'users#new'

  resources :features
  get '/liststreams', to: 'liststreams#index'
  post '/liststreams/list', to: 'liststreams#temp_list_streams'

  resources :sessions
  get '/log-in', to: 'sessions#login'
  post '/log-in', to: 'sessions#create'
end
