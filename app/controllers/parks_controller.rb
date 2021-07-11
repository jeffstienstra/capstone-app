class ParksController < ApplicationController

  #park_serializer will display only name and 1 image url
  def index
    state_code = "stateCode=#{params[:stateCode]}&"
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?#{state_code}limit=25&start=0&api_key=#{Rails.application.credentials.nps_api_key}")
    # data = JSON.parse(response.body)
    parks = response.parse["data"]
    render json: parks
  end

  #the 'more info' page will show full park data. we need a second web request using the park's api_id
  def show
    #first get park api_id from initial search results and pass as params[:id]
    #https://developer.nps.gov/api/v1/parks?&id=#{id: params[:parkName]}&api_key=#{Rails.application.credentials.nps_api_key
    park_code = "parkCode=#{params[:parkCode]}&"
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?#{park_code}api_key=#{Rails.application.credentials.nps_api_key}")
    # data = JSON.parse(response.body)
    park = response.parse["data"]
    render json: park
  end
end
