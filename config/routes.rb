Rails.application.routes.draw do

  post 'call/incoming'

  resources :phone_numbers

  devise_for :users
  resources :users

  root to: "pages#home"

end
