Rails.application.routes.draw do
  resources :bill_details
  resources :bills
  resources :agreement_services
  resources :agreements
  resources :employees
  resources :services
  resources :devices
  resources :rooms
  resources :kind_rooms
  resources :renters
  resources :roles
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
