Rails.application.routes.draw do
  resources :libraries do
    member do
      post :add_book
      get :new_book
    end
  end
  resources :books
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "libraries#index"
end
