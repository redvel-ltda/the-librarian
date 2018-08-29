Rails.application.routes.draw do
  devise_for :users

  resources :books

  get 'home/index'
  root to: 'home#index'
end
