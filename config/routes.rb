Rails.application.routes.draw do
  get 'reviews/new'
  root to: "posts#index"
  resources :posts, only: %i[index new create show edit update] do
    resources :reviews, only: %i[new create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
