Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end
  resources :sessions, only: %i(new create destroy)
  resources :users, only: %i(index new create show)
  resources :relationships, only: %i(create destroy)
end
