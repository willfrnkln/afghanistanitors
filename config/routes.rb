Afghanistanitors::Application.routes.draw do
  get "sessions/new"

  resources :comics
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  get "pages/home"

  get "pages/contact"
  
  get "pages/about"
  
  get "comics/new"
  
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/home',    :to => 'pages#home'
  match '/upload',  :to => 'upload#uploadfile'
  match '/new',		  :to => 'comics#new'
  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  
  root :to => 'pages#home'
  
end















