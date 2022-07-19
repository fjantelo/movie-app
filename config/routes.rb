Rails.application.routes.draw do
  # get "/actor/:id", controller: "actors", action: "actor"
  # get "/movies" => "movies#index"
  # get "/movies/:id" => "movies#show"
  # get "/actor" => "actors#query"
  # get "/actorid" => "actors#bodyparams"

  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  post "/movies" => "movies#create"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
  post "/actors" => "actors#create"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/movie_genres" => "movie_genres#create"
end
