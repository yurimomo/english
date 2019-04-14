Rails.application.routes.draw do
  
  root 'top#index'
  resources :dictionaries
  resources :articles
  resources :users
  resources :contacts do
    collection do
      post :confirm
    end
  end
  get '/login', to: 'sessions#new'
  post 'contacts/confirm', to: 'contacts#confirm'
  post '/login', to: 'sessions#create'
  post '/articles' => 'articles#create'
  post '/users/new' => 'users#create'
  post 'contacts/new' => 'contacts#create'
  delete '/logout' , to: 'sessions#destroy'

  root to: 'dictionaries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
