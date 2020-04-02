# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'
  get 'users/sign_up' => 'users#new'
  post "users/sign_up" => 'users#create'
  get 'users/sign_in' => 'sessions#new'
  post 'users/sign_in' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users, only: [:show, :edit, :update]
  resources :categories
  namespace :admin do
    resources :categories, only: [:new, :create]
    resources :words, only: [:index, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
