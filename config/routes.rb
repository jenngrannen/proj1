Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/capture', to: 'pokemon#capture'
  patch '/damage', to: 'pokemon#damage'
  post '/pokemon/create', to: 'pokemon#create'
  get '/pokemon/new', to: 'pokemon#new'
  post '/', to: 'pokemon#new'
end
