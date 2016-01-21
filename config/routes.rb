Rails.application.routes.draw do
  get 'users/show'
  root 'users#show'

  resources :users, only: [:show, :create]

end
