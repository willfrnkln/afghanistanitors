Afghanistanitors::Application.routes.draw do
  resources :comics
  resources :users

  get "pages/home"

  get "pages/contact"
  
  get "pages/about"
  
  get "comics/new"
  
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/home',    :to => 'pages#home'
  match '/upload',  :to => 'upload#uploadfile'
  match '/new',		:to => 'comics#new'
  match '/signup',  :to => 'users#new'
  
  root :to => 'pages#home'
  
end















