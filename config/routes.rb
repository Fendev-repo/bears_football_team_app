# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: 'registrations' }
  
  root to: 'home#index'
  get 'home/index'
  
  resources :users, as: 'players'
  resources :huddles
  resources :profiles, only: [:new, :create, :show, :edit, :update]
end