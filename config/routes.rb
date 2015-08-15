Rails.application.routes.draw do

  get 'login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'
  post 'user'  => 'users#create'

  get 'user/show' => 'users#show'

match ':controller(/:action/(:id))', :via => [:get, :post, :patch]
end