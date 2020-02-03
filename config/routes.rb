Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'boards#index'
  get 'cheering', to: 'boards#cheering'
  get 'new', to: 'boards#new'

  resources :posts
end
