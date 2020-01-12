Rails.application.routes.draw do

#session
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users, except: [:index]

  resources :drops

end
