Deprecated::Engine.routes.draw do
  resources :books
  resources :users

  root "books#index"
end
