Rails.application.routes.draw do

  devise_for :accounts, controllers: { registrations: 'accounts/registrations', sessions: 'accounts/sessions'}
  root "shops#index"
  resources :shops, only: [:show] do
    resources :menus, only: [:show]
  end

  resources :carts, only: [:show] do
    member do
      post 'pay' => 'carts#pay', as: 'pay'
      get 'done' =>'carts#done', as: 'done'
    end
  end

  resources :orders

  post '/add_item' => 'carts#add_item'
  #post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'

  #店舗用
  namespace :admin do
    root "top#index"
    resources :accounts, only: [:show] do
      resources :menus
    end
  end
end
