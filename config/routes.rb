Rails.application.routes.draw do
  resources :posts
  #devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  get 'users/sign_in'
  get 'habib/login'
  get 'habib/principal'
  get 'habib/welcome'
  root to: "habib#principal"
  devise_for :users, skip: [:sessions]
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
