Rails.application.routes.draw do
  devise_for :users

  root "articles#index"

  resources :users, except: [:new, :destroy]
  resources :articles
end
