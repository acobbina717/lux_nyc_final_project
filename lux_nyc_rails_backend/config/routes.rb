Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :update, :destroy]
  resources :hotels, only: [:index, :show, :create, :update]
  resources :rooms, only: [:index, :show, :update, :create]
  resources :reservations, only: [:index, :show, :create, :destroy]
  # resources :reviews, only: [:index, :show, :create, :update, :destroy]
  # resources :review_comments, only: [:show, :create, :update, :destroy]
  post "/signup", to: "users#signup"
  post "/login", to: "sessions#login"
  get "/auth", to: "users#auth"
  delete "/logout", to: "sessions#logout"
end
