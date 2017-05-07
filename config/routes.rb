Rails.application.routes.draw do

  post 'call/incoming'

  resources :phone_numbers
  resources :calls

  devise_for :users
  resources :users

  root to: "pages#home"

end
