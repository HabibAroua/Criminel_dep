Rails.application.routes.draw do
  resources :proofs
  resources :victims
  resources :waitnesses
  resources :culprits
  resources :the_cases
  resources :police_stations
  resources :governorates
  resources :posts
  #devise_for :users
  devise_for :users, controllers:
  {
    registrations: 'users/registrations', sessions: 'users/sessions'
  }
  get 'users/sign_in'
  get 'habib/login'
  get 'habib/principal'
  get 'habib/welcome'
  #post '/governorates/add_police_station'  
  root to: "habib#principal"
  devise_for :users, skip: [:sessions]
  post '/governorates/add_police_station' , to: 'governorates#add_police_station'
  post '/governorates/insert' , to: 'governorates#insert'
  post '/police_stations/insert' , to: 'police_stations#insert'
  post '/the_cases/insert_proof' , to: 'the_cases#insert_proof'
  post '/the_cases/insert_victim' , to: 'the_cases#insert_victim'
  post '/the_cases/insert_culprit' , to: 'the_cases#insert_culprit'
  post '/the_cases/insert_waitness' , to: 'the_cases#insert_waitness'
    #post 'governorates/:id/insert'
  get 'governorates/new_police_station'
  get 'wanteds/find'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
