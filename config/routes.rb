Rails.application.routes.draw do
  resources :users
  resources :categories
  resources :comments
  resources :posts

  # Custom User routes
  get 'users/:id/categories', to: 'users#get_categories'
  get 'users/:id/posts', to: 'users#get_posts'
  get 'users/:id/comments', to: 'users#get_comments'

  # Custom Post routes
  get 'posts/:id/comments', to: 'posts#get_comments'

  # Custom Category routes
  get 'categories/:id/posts', to: 'categories#get_posts'

  api_guard_routes for: 'users', controller: {
      registration: 'users/registration'
  }
end