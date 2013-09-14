Mathmetting::Application.routes.draw do
  root :to=>"users#new"
  get '/users/all', to: 'users#all'
  resources :users
end
