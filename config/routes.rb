Rails.application.routes.draw do
  root 'welcome#index'
  get "users/sign_up" => "users#new"
  post "users/sign_up" => "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
