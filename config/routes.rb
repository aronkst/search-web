Rails.application.routes.draw do
  root 'root#index'

  resources :search, only: %i[new create edit update destroy]
  resources :search_values, only: %i[edit update]
  resources :search_json, only: %i[edit update]
  resources :search_finish, only: %i[edit update]

  get 'run/:search_id', to: 'run#index', as: 'run_index'
  post 'run/:search_id', to: 'run#create', as: 'run_create'
  delete 'run/:search_id', to: 'run#destroy', as: 'run_destroy'
  get 'run/:search_id/:run_id', to: 'run#show', as: 'run_show'
end
