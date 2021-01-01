Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  resources :users, only: [:edit, :update, :show]
  resources :events, only: [:index, :new, :create, :show] do
    resources :event_users, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end