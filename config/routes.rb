SampleApp::Application.routes.draw do
  resources :blocks

  resources :block_types

  resources :navgations

  resources :nav_types

  resources :app_versions

  resources :users do
    member do
      get :following, :followers, :company
      
    end
  end
  
  resources :apps 
  resources :nav_types
  
  
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root to: 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
end
