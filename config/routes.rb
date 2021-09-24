Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end
  resources :sessions, only: %i(new create destroy)
  resources :users, only: %i(new create show)
end
