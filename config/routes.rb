Rails.application.routes.draw do
  resources :cases
  resources :police_stations
  resources :governorates
  resources :posts
  #devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  get 'users/sign_in'
  get 'habib/login'
  get 'habib/principal'
  get 'habib/welcome'
  #post '/governorates/add_police_station'  
  root to: "habib#principal"
  devise_for :users, skip: [:sessions]
  post '/governorates/add_police_station' , to: 'governorates#add_police_station'
  post '/governorates/insert' , to: 'governorates#insert'
    #post 'governorates/:id/insert'
  get 'governorates/new_police_station'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
