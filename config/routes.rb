Rails.application.routes.draw do
  root 'lures#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lures, only: [:index, :show]
  resources :items, only: [:index, :show, :update]
  end
