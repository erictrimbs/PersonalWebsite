Rails.application.routes.draw do    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'

  get    '/home',   to: 'static_pages#home'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/resume',  to: 'static_pages#resume'
  get    '/bookshelf',  to: 'static_pages#bookshelf'
  get    '/projects',  to: 'static_pages#projects'

  #individual projects
  get    '/c',  to: 'static_pages#c'
  get    '/python',  to: 'static_pages#python'
  get    '/javascript',  to: 'static_pages#javascript'
  get    '/rubyonrails',  to: 'static_pages#rubyonrails'
  get    '/backend',  to: 'static_pages#backend'
  get    '/docker',  to: 'static_pages#docker'
  
  #users
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'

  get    '/signup',   to: 'users#new'
  post   '/signup',   to: 'users#create'
  resources :users

end
