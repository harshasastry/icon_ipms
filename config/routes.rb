Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  get 'surveys/search'

  post 'surveys/searchResults'

  get 'surveys/searchResults'

  # This represents a collection of surveys - basically survey class
  resources :surveys

  #resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
