HackerNews::Application.routes.draw do
  root 'articles#index'
  resources :users, except: :new do
    resources :articles, only: :index
    resources :comments, only: :index
  end

  resources :sessions, only: [:new, :create, :destroy]

  match '/sign_up', to: 'users#new',          via: 'get'
  match '/login',   to: 'sessions#new',       via: 'get'
  match '/logout',  to: 'sessions#destroy',   via: 'delete'

  resources :articles
  resources :comments, except: :index
end
