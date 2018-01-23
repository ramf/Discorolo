Rails.application.routes.draw do
  get 'admins/index'

    devise_for :users
    resources :records
    root "records#index"


end
