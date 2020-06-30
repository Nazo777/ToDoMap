Rails.application.routes.draw do
  devise_scope :user do
    root "users/sessions#new"
    post 'users/guest_sign_in', to: 'users/sessions#guest'
  end

  devise_for :users
  resources :maps, only: [:index, :create ,:destroy]
end
