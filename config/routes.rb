Rails.application.routes.draw do
  devise_for :users, controllers: {
    passwords: 'passwords',
    registrations: 'users',
    sessions: 'sessions',
  }

  get '/address', to: 'addresses#show', as: 'address'
  get '/info_window', to: 'info_window#index', as: 'info_window'
  get '/sitemap', to: 'sitemaps#index', as: 'sitemap'

  scope '/sidebar', controller: :sidebar do
    get :search, as: 'search'
    get :combo_form, as: 'combo_form'
    get :edit_profile, as: 'edit_profile'
  end

# Name: Greg Heitman
# Course: CSC 415-01
# Semester: Spring 2016
# Instructor: Dr. Pulimood
# Project name: Adopt-A-Hydrant
# Description: An open source application where users can claim responsibility for shoveling
#              a fire hydrant in the city of Boston when it snows 
# Filename: "app/config/routes.rb" 
# Description: This file contains the routes for various get methods and resources in the application. Below, I instantiated the resource named ":requestownerships"
#              for use throughout the code.
# Last modified on: 4/18/16
#
  resource :reminders
  resource :requestownerships
  resource :things
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root to: 'main#index'
end

