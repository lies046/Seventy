Rails.application.routes.draw do

  devise_for :accounts, controllers: {   registrations: 'accounts/registrations',sessions: 'accounts/sessions' }
  root "top#index"

  #管理用
  namespace :admin do
    root "top#index"
    resources :accounts, only: [:show] do
    resources :menus
    end
  end
end
