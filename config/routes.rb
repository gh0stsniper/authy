Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'auth/index'
  root'welcome#index'
  #get 'users/new'
 # get 'users/create'

 resources :users, only:[:new,:create]
 resources :sessions, only:[:new,:create,:destroy]
 delete '/logout', to: 'sessions#destroy', as: :log_out
 #get '/signup' => 'users#new', as: 'new_user_path'
 #post '/signup' => 'users#create', as: 'users_path'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
