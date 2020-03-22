Rails.application.routes.draw do
  root 'welcome#index'
  get "users/sign_up" => "users#new"
  post "users/sign_up" => "users#create"
  get "users/sign_in" => "sessions#new"
  post "users/sign_in" => "sessions#create"
  get "users/:id" => "users#show", as: :user
  delete "logout" => "sessions#destroy"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
