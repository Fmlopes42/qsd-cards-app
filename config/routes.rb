Rails.application.routes.draw do
  root 'cards#index'
  resources :cards, only: [:new, :create, :show, :index, :destroy, :search]
  get '/search', to: 'cards#search'
  get '/invalid', to: 'cards#invalid'
end
