Rails.application.routes.draw do
  resources :tags
  resources :chargetags
  resources :favorites
  resources :sentcharges
  resources :charges
  resources :users

  post "/score", to: "charges#score"

  post "/signup", to: "users#create"
  post "/login", to: "auth#login"

  get "/auto_login", to: "auth#auto_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
