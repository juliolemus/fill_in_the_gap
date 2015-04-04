Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'

  resources :comments
  resources :posts

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :users
  resources :sessions

end
