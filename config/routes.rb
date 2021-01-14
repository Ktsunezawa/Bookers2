Rails.application.routes.draw do
  get 'books/index'
  devise_for :users
  root to: 'homes#top'
  get 'about' => 'homes#about'
  resources :users
  resources :books
end
