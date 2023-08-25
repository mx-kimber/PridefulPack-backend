Rails.application.routes.draw do
 
  resources :service_offerings
  resources :users
  resources :photos
  resources :reviewers
  resources :reviews
end
