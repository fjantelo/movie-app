class ActorsController < ApplicationController
  def actor
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end

  def query
    actor = Actor.find_by(id: params["q"])
    render json: actor.as_json
  end
end
