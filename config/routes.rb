Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  # pages
  get '/help', to: 'pages#help'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # users
  resources :penggunas
  resources :posts do
    resources :comments
  end
  resources :relationships
end
