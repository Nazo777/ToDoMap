Rails.application.routes.draw do
  devise_for :users
  root 'maps#index'
  resources :maps, only: [:index, :create ,:destroy]
end
