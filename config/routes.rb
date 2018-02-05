Rails.application.routes.draw do

  get 'admins/index'


    devise_for :users, :controllers => { registrations: 'registrations' }
    resources :records
    resources :admins, except: [:show]
    resources :users, except: [:show]

    namespace :site do
      get 'home', to: 'home#index'
    end


    # devise_for :admins, :skip =>[:registrations]
    # devise_for :users






    root "records#index"


end
