class ParksController < ApplicationController

  #park_serializer will display only park name and 1st image url from NPS database
  def index
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?stateCode=#{params[:stateCode]}&limit=25&start=0&api_key=#{Rails.application.credentials.nps_api_key}")
    parks = response.parse["data"]
    render json: parks
  end

  #the 'Details' page will show full park data based on parkCode retrieved from parks index method.
  def show
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?parkCode=#{params[:parkCode]}&api_key=#{Rails.application.credentials.nps_api_key}")
    park = response.parse["data"]
    render json: park
  end
end
