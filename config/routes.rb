Rails.application.routes.draw do
  
  root 'events#index'
  resources :comments
  resources :events
  resources :photos do
    member do
      get :download_image
      end
    end
  resources :tags
  resources :users

end