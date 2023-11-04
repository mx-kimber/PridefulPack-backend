Rails.application.routes.draw do
  
  post "/sessions" => "sessions#create"
  resources :service_offerings
  resources :users
  resources :photos
  get "latest", to: 'photos#latest'
  resources :reviewers
  resources :reviews
  resources :admin_comments
end
