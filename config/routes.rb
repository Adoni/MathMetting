Mathmetting::Application.routes.draw do
  root :to=>"users#new"
  get '/users/all', to: 'users#all'
  post '/users/login', to: 'users#login'
  resources :users
end
