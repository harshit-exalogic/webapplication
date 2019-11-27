Rails.application.routes.draw do
  # get 'sessions/new'
  #  get 'sessions/create'
  # get 'sessions/destroy'
  resources :users
  #get 'home/index'
   root "home#index"
   get '/new' => "home#new"



  resources :sessions, only: [:new, :create, :destroy]
  get '/signup' => "users#new"
  get '/login' => "sessions#new"
  get '/logout' => "sessions#destroy"
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
end
