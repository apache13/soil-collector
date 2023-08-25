Rails.application.routes.draw do
  resources :phs
  resources :samples
  resources :requests
  resources :customers
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
