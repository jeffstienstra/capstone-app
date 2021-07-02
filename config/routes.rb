Rails.application.routes.draw do
  post "/sessions" => "sessions#create"

  get "/users" => "users#index"
  post "/users" => "users#create"

  get "/parks" => "parks#index"
  get "/parks/:id" => "parks#show"

  get "/favorites" => "favorites#index"
  get "/favorites/:id" => "favorites#show"
  # post "/favorites" => "favorites#create"

  get "/journals" => "journals#index"
  get "/journals/:id" => "journals#show"

  # post "/journals" => "journals#create"

end
