Rails.application.routes.draw do
  resources :articles
  # get 'home/index'
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contactUs'
end
