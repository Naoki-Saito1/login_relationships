Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :relationships, only: [:create, :destroy]
end
