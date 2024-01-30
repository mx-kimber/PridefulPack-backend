Rails.application.routes.draw do
  get 'social_media_accounts/index'
  get 'social_media_categories/show'
  
  post "/sessions" => "sessions#create"
  resources :service_offerings

  resources :users
  post '/avatar_upload', to: 'users#avatar_upload'
  
  resources :social_media_categories
  resources :social_media_accounts
  
  resources :photos
  get "latest", to: 'photos#latest'
  
  resources :reviewers
  resources :reviews
  resources :admin_comments
end
