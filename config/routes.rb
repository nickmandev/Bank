Rails.application.routes.draw do
  
  get 'accounts/new' => 'accounts#new'
  post 'accounts/create' => 'accounts#create'

  root 'sessions#info'

  get '/contacs' => 'sessions#contacs'
  
  get '/balance/form' => 'transactions#index_form'
  post '/balance' => 'transactions#index'

  get "/transaction" => 'transactions#new'
  post "/transaction/amount" => 'transactions#create'
  
  get "/deposit" => 'transactions#deposit_form'
  post "/deposit/new" => 'transactions#deposit'

  get "/withdraw" => 'transactions#withdraw_form'
  post "/withdraw/new" => 'transactions#withdraw'
     
  get 'login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  get  'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'
  post 'user'  => 'users#create'

  get 'user/show' => 'users#show'

match ':controller(/:action/(:id))', :via => [:get, :post, :patch]

end