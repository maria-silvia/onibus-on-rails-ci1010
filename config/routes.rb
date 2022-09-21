Rails.application.routes.draw do
  resources :linhas
  resources :tipos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "linhas#index"
end
