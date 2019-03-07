Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  resources :playlists, only: [:index, :show]
  get '/hors-serie', to: 'pages#special'
  get '/a-propos', to: "pages#about"
end
