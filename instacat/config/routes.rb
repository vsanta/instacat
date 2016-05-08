Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get 'posts_stream', to: 'posts_stream#index', as: 'posts_stream'

  resources :sessions, only: [:create, :destroy]
  resources :posts, only: [:new, :create, :show, :index]
  resource :home, only: [:show]

  root to: "home#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
