Rails.application.routes.draw do
  get 'admins/index'

    devise_for :users
    resources :records
    resources :admins, except: [:show, :destroy]
    root "records#index"


end
