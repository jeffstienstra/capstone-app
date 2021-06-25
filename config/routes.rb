Rails.application.routes.draw do
  # get "/favorites" => "/favorites#index"

  # get "/parks" => "/parks#index"

  post "/users" => "users#create"
  
  post "/sessions" => "sessions#create"
end
