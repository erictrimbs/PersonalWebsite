Rails.application.routes.draw do # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'

  #main
  get    '/home',      to: 'static_pages#home'
  get    '/about',     to: 'static_pages#about'
  get    '/contact',   to: 'static_pages#contact'
  get    '/resume',    to: 'static_pages#resume'
  get    '/bookshelf', to: 'static_pages#bookshelf'
  get    '/projects',  to: 'projects#projects'
  get    '/essays',    to: 'essays#essays'

  #essays
  get    '/essays/thoughtism', to: 'essays#thoughtism'
  get    '/essays/engineering', to: 'essays#engineering'

  #projects
  get    '/projects/connectfour', to: 'projects#connectfour'
  get    '/projects/python',      to: 'projects#python'
  get    '/projects/javascript',  to: 'projects#javascript'
  get    '/projects/backend',     to: 'projects#backend'
  get    '/projects/docker',      to: 'projects#docker'
  get    '/projects/website',     to: 'projects#website'

  #users
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get    '/signup', to: 'users#new'
  post   '/signup', to: 'users#create'
  resources :users

end
