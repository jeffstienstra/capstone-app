class ParksController < ApplicationController

  #park_serializer will display only name and 1 image url
  def index
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?limit=10&start=0&api_key=#{Rails.application.credentials.nps_api_key}")
    data = JSON.parse(response.body)
    render json: data
  end

  #the 'more info' page will show full park data. we need a second web request using the park's api_id
  def show
    #first get park api_id from initial search results and pass as params[:id]
    #https://developer.nps.gov/api/v1/parks?&id=#{id: params[:parkName]}&api_key=#{Rails.application.credentials.nps_api_key
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?&parkCode=abli&api_key=#{Rails.application.credentials.nps_api_key}")
    park = JSON.parse(response.body)
    render json: park
  end
end
