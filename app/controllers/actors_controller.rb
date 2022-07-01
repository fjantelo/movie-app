class ActorsController < ApplicationController
  def actor
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end
end
