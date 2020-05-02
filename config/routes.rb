Rails.application.routes.draw do

  devise_for :accounts, controllers: { registrations: 'accounts/registrations', sessions: 'accounts/sessions'}
  root "shops#index"
  resources :shops, only: [:show] do
    resources :menus, only: [:show]
  end

  resources :carts, only: [:show]
  
  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'

  #管理用
  namespace :admin do
    root "top#index"
    resources :accounts, only: [:show] do
      resources :menus
    end
  end
end
