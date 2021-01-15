Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'about' => 'homes#about'
  post 'users/:id' => 'books#create'
  post 'books' => 'books#create'
  resources :users
  resources :books

end
