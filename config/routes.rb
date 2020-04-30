Rails.application.routes.draw do

  devise_for :accounts, controllers: { registrations: 'accounts/registrations' }
  root "top#index"

  #管理用
  namespace :admin do
    root "top#index"
    resources :accounts, only: [:show] do
    resources :shops
    end
  end
end
