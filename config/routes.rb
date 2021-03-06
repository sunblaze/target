# typed: false
# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  root "users#index"

  # Place the ported code under it's own prefix so it doesn't conflict with existing users endpoints
  mount Deprecated::Engine => "/deprecated"
end
