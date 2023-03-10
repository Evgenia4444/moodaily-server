Rails.application.routes.draw do
  get 'elements/index'
  get 'elements/create'
  get 'elements/update'
  get 'elements/destroy'
  get 'posts/index'
  get 'posts/create'
  get 'posts/update'
  get 'posts/destroy'
  get 'users/index'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope '/api/v1' do
    resources :users
    resources :posts
    resources :elements
end
end
