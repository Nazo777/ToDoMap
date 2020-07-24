Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root "users/sessions#new"
    post 'users/guest_sign_in', to: 'users/sessions#guest'
  end

  resources :maps, only: [:index, :create ,:destroy,:edit,:update]
  resources :instructions, only: [:index]  
end
