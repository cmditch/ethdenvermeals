Rails.application.routes.draw do
  resources :tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'main#index'
  
  get '/user/:tokenid', to: 'main#user_info'
  get '/vendor-login', to: 'main#login'

  get '/user/:tokenid/:pin', to: 'main#vendor'
  post '/user/:tokenid/:pin', to: 'main#sale'

  get '/confirm_sale/:sale_id', to: 'main#confirm_sale'
  delete 'confirm_sale/:sale_id', to: 'main#refund_sale'

  get '/refund_complete/', to: 'main#refund_complete'

end
