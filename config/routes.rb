Rails.application.routes.draw do

  get 'login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get 'signup' => 'users#new'
  post 'user'  => 'users#create'

match ':controller(/:action/(:id))', :via => [:get, :post, :patch]
end