Rails.application.routes.draw do
  resources :dictionaries
  resources :articles
  resources :users
  post '/articles' => 'articles#create'
  post '/users/new' => 'users#create'

  root to: 'dictionaries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
