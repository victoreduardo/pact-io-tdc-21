class AlligatorsController < ApplicationController
  def index
    alligators = Alligator.all.select(:name)
    render json: alligators.to_json
  end
end
