Rails.application.routes.draw do
  root 'root#index'
  resources :search_begin, only: [:new, :create, :edit, :update]
  resources :search_json, only: [:edit, :update]
end
