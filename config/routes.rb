Rails.application.routes.draw do
  root 'application#index'

  resources :articles, only: [:index]
end
