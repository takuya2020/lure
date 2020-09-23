Rails.application.routes.draw do
  resources :lures, only: [:index, :show, :edit]
end