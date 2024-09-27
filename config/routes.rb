# config/routes.rb
Rails.application.routes.draw do

  #Rutas get
  get 'posts/index'
  get 'posts/create'
  get 'posts/new'

  #Rutas Post
  post "posts" => "posts#create"
  
  root "posts#index"
end
