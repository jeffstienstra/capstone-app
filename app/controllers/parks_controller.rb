class ParksController < ApplicationController
  def index
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?&api_key=#{Rails.application.credentials.nps_api_key}")
    data = JSON.parse(response.body)
    render json: data
  end
end
