Rails.application.routes.draw do
  resources :users, only:[:new, :create, :show] do
    resources :birds
  end

  namespace :admin do
    resources :species
  end

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
end
