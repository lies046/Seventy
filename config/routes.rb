Rails.application.routes.draw do

  devise_for :accounts
  root "top#index"

  #管理用
  namespace :admin do
    root "top#index"
    resources :accounts, only: [:show] do
    resources :shops
    end
  end
end
