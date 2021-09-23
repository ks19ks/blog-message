Rails.application.routes.draw do
  resources :blogs
  resources :sessions, only: %i(new create destroy)
  resources :users, only: %i(new create show)
end
