Rails.application.routes.draw do
    devise_for :users
    resources :records
    root "records#index"


end
