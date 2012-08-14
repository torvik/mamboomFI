Mamboo::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :expences, only: [:create, :destroy]

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete


  root to: 'static_pages#home'

  match '/about',   to: 'static_pages#about'


  
end
