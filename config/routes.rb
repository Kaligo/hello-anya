Rails.application.routes.draw do
  root 'pages#index'
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create]
  match '*path', to: 'application#not_found_method', via: :all
end
