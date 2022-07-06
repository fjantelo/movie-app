Rails.application.routes.draw do
  get "/actor/:id", controller: "actors", action: "actor"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  get "/actor" => "actors#query"
  get "/actorid" => "actors#bodyparams"
end
