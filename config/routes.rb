Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'boards#index'
  get 'cheering', to: 'boards#cheering'
  get 'new', to: 'boards#new'
end
