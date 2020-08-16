Rails.application.routes.draw do    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'

  get    '/home',   to: 'static_pages#home'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/resume',  to: 'static_pages#resume'
  get    '/bookshelf',  to: 'static_pages#bookshelf'
  get    '/projects',  to: 'static_pages#projects'

  #individual projects
  get    '/projects/c',  to: 'static_pages#c'
  get    '/projects/python',  to: 'static_pages#python'
  get    '/projects/javascript',  to: 'static_pages#javascript'
  get    '/projects/rubyonrails',  to: 'static_pages#rubyonrails'
  get    '/projects/backend',  to: 'static_pages#backend'
  get    '/projects/docker',  to: 'static_pages#docker'
  
  #users
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'

  get    '/signup',   to: 'users#new'
  post   '/signup',   to: 'users#create'
  resources :users

end
