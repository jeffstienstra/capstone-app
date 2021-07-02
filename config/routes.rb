Rails.application.routes.draw do
  post "/sessions" => "sessions#create"

  get "/users" => "users#index"
  post "/users" => "users#create"

  get "/parks" => "parks#index"
  get "/parks/:id" => "parks#show"

  get "/favorites" => "favorites#index"
  # post "/favorites" => "favorites#create"

  get "/journals" => "journals#index"
  # post "/journals" => "journals#create"

end
