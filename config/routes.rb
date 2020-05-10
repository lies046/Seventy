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

  post '/add_item' => 'carts#add_item'
  #post '/update_item' => 'carts#update_item'
  delete '/delete_item/:id' => 'carts#delete_item', as: :delete_item

  #店舗用
  namespace :admin do
    root "top#index"
    resources :accounts, only: [:show] do
      get 'order' => 'accounts#order'
      resources :menus
    end
    
  end
end
