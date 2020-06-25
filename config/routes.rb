Rails.application.routes.draw do
  devise_scope :user do
    root "users/sessions#new"
  end

  devise_for :users
  resources :maps, only: [:index, :create ,:destroy]
end
