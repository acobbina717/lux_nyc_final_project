Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :hotels, only: [:index, :show, :create, :update]
  resources :reservations, only: [:index, :show, :create, :destroy]
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :review_comments, only: [:show, :create, :update, :destroy]
  resources :rooms, only: [:index, :show, :update, :create]
end
