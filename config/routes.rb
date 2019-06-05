Rails.application.routes.draw do
  resources :comments
  resources :posts

  get 'posts/:id/comments', to: 'posts#get_comments'
end
