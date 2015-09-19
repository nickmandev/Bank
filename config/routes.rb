Rails.application.routes.draw do
  
  root 'sessions#new'
  
  get 'balance/index'

  get "/transaction" => 'transactions#new'
  post "/transaction/amount" => 'transactions#create'
  
  #get 'deposit' => 'deposits#new'
  #post '/deposit' => 'deposits#create'
  
  get 'login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  get  'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'
  post 'user'  => 'users#create'

  get 'user/show' => 'users#show'

match ':controller(/:action/(:id))', :via => [:get, :post, :patch]
end