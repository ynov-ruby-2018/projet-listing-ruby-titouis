# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homepage#index'
  resource :listings
  post '/listings/contact', to: 'contact#contact'
  get 'listings_details', action: :detail, controller: 'listings'

  namespace :api, format: 'json' do
    namespace :v1 do
      post 'auth', to: 'auth#create'
      get 'locales', to: 'locales#index', as: 'locales'
    end
  end

end
