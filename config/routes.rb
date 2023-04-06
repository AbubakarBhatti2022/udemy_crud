Rails.application.routes.draw do
  # get 'home/index'
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contactUs'
end
