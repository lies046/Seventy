Rails.application.routes.draw do

  devise_for :accounts, controllers: { registrations: 'accounts/registrations', sessions: 'accounts/sessions'}
  root "shops#index"
  resources :shops, only: [:show] do
    resources :menus, only: [:show]
  end

  #管理用
  namespace :admin do
    root "top#index"
    resources :accounts, only: [:show] do
      resources :menus
    end
  end
end
