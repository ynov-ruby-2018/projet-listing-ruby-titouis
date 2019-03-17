# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homepage#index'
  resource :annonces
  get '/list', to: 'annonce#index', resources: :annonce
  get '/list/add', to: 'annonce#create', resources: :annonce
end
