Rails.application.routes.draw do
  
  post "/sessions" => "sessions#create"
  resources :service_offerings
  resources :users
  resources :photos
  resources :reviewers
  resources :reviews
  resources :admin_comments
end
