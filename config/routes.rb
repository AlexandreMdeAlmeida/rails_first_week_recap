Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts, only: %i[index new create show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
