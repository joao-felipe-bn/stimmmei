Rails.application.routes.draw do
  
  root 'dashboard#home'
  get  '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout',  to: 'session#destroy'
  get '/logout',  to: 'session#destroy'

  resources :usuarios
end
