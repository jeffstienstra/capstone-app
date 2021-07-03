class FavoritesController < ApplicationController
  def index
    favorites = Favorite.all.order(:park_name)
    render json: favorites
  end

  def show
    favorite = Favorite.find_by(id: params[:id])
    render json: favorite
  end

  def create
    favorite = Favorite.new(
      user_id: current_user.id,
      park_name: params[:park_name],
      address: params[:address],
      parkCode: params[:park_code],
      image_url: params[:image_url],
    )
    if favorite.save
      render json: favorite.as_json
    else
      render json: { errors: favorite.errors.full_messages }, status: 422
    end
  end

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: { message: "This park has been removed from your favorites." }
  end
end
