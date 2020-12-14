Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :index, :destroy]
  post 'users/add_user', to: 'users#add_user'
=======
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :users, only: [:new, :index]
>>>>>>> e68d0dc997763ea99598f916b444899cac537e6a
end

