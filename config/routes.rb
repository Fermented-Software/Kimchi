Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users
  get '/sign-up', to: 'users#new'
  get "/dashboard", to: "dashboard#index"
  get '/log-in', to: 'login#login_receive'
  post '/log-in', to: 'login#login_answer'
end
