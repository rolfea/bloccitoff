Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'

  devise_for :users
  root to: "welcome#index"

  resources :users, only: [:show]

  resources :users, only: [] do
    resources :items, only: [:create]
  end


end
