Rails.application.routes.draw do
  get 'home/index'
  get 'home/shows'
  get 'home/seasons'
  get 'home/episodes'
  get 'home/characters'
  get 'home/quotes'
  resources :shows
  resources :quotes
  resources :episodes
  resources :characters
  root 'shows#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
