Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  resources :dictionaries
  resources :articles
  resources :users
  post '/articles' => 'articles#create'
  post '/users/new' => 'users#create'
  delete '/logout' , to: 'sessions#destroy'

  root to: 'dictionaries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
