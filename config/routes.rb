Rails.application.routes.draw do
  get 'balance/index'

  get '/deposit' => 'deposit#new'

  get 'deposit/create'

  get '/withdraw' => 'withdraw#new'

  get 'withdraw/create'

 root 'sessions#new'
  get 'login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'
  post 'user'  => 'users#create'

  get 'user/show' => 'users#show'

match ':controller(/:action/(:id))', :via => [:get, :post, :patch]
end