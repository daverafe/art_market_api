Rails.application.routes.draw do
  resources :art_posts
  resources :users
  post '/login', to: 'auth#create'
  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
