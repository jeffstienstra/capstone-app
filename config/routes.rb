Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/parks" => "parks#index"
  get "/parks/:parkCode" => "parks#show"

  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  get "/favorites/:id" => "favorites#show"
  delete "/favorites/:parkCode" => "favorites#destroy"

  get "/journals" => "journals#index"
  post "/journals" => "journals#create"
  get "/journals/:id" => "journals#show"
  patch "/journals/:id" => "journals#update"
  delete "/journals/:id" => "journals#destroy"
end
