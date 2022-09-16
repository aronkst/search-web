Rails.application.routes.draw do
  root 'root#index'
  resources :search, only: [:new, :create, :edit, :update, :destroy]
  resources :search_json, only: [:edit, :update]
end
