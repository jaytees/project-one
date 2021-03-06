Rails.application.routes.draw do

  get 'map/test'
  root to: 'pages#homepage'

#session
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users, except: [:index]

  resources :drops

  resources :products

  resources :line_items

end
