Rails.application.routes.draw do
  get "/actor/:id", controller: "actors", action: "actor"
end
