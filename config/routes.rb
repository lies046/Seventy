Rails.application.routes.draw do

  devise_for :accounts
  root "top#index"


  namespace :admin do
    root "top#index"
  end
end
