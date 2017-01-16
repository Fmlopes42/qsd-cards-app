Rails.application.routes.draw do
  root 'cards#index'
  resources :cards, only: [:new, :create, :show, :index, :delete]
end
