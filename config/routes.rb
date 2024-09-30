# config/routes.rb
Rails.application.routes.draw do
  get 'render/index'
  get "up" => "rails/health#show", as: :rails_health_check

  #Rutas get
  get 'posts/index'
  get 'posts/create'
  get 'posts/new'

  #Rutas Post
  post "posts" => "posts#create"
  
  root "render#index"
end
