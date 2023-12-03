Rails.application.routes.draw do
  devise_for :users
  root to: 'rehas#index'
  resources :rehas, only: [:new, :create, :show, :edit, :update, :destroy]
end
