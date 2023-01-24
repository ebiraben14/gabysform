Rails.application.routes.draw do
  resources :surveys

  resources :input_fields
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "pages#home"

  # root "articles#index"
end
