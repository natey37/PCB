Rails.application.routes.draw do
  resources :tags
  resources :chargetags
  resources :favorites
  resources :sentcharges
  resources :charges
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
