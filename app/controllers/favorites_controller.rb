class FavoritesController < ApplicationController
  def index
    # favorites = Favorite.all.order(:park_name)
    favorites = current_user.favorites.order(:park_name)  #<- Rails sometimes says no method 'favorites' for NilClass
    render json: favorites
  end

  def show
    favorite = Favorite.find_by(id: params[:id])
    render json: favorite
  end

  def create
    favorite = Favorite.find_or_initialize_by(
      user_id: current_user.id,
      park_name: params[:park_name],
      address: params[:address],
      parkCode: params[:parkCode],
      image_url: params[:image_url],
      longitude: params[:longitude],
      latitude: params[:latitude],
      visited: false,
    )
    if favorite.save
      render json: favorite.as_json
    else
      render json: { errors: favorite.errors.full_messages }, status: 422
    end
  end

  def destroy
    favorite = Favorite.find_by(parkCode: params[:parkCode])
    favorite.destroy
    render json: { message: "This park has been removed from your favorites." }
  end
end
