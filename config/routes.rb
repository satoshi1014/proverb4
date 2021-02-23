Rails.application.routes.draw do
  devise_for :users
  root 'words#index'
  resources :words
  resources :users, only: [:show, :edit, :update]
  resources :words do 
    resources :comments, only: [:create]
  end 
end
