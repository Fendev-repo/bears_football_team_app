# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: 'registrations' }
  
  root to: 'home#index'
  get 'home/index'
  
  resources :users, as: 'players'
  resources :profiles
  resources :huddles
end


=begin
  home#index
    Accordian
    - About us
    - Next game info
      - Venue information with map for location
      - Competition - name of competition
      - Weather
    - Weather forcast - API call
    
    - Season scorecard
      - Games played vs who and final score

    - Team news
      - Current public notifications
    - About Us
      - Contact information
      - Name of coach
      - Address

Season Scorevcard
Next Game Information
Weather Forcast
Team News
About Us

=end