class FavoritesController < ApplicationController
  def index
    favorites = Favorite.all.order(:park_name)
    render json: favorites
  end

  def show
    favorite = Favorite.find_by(id: params[:id])
    render json: favorite
  end
end
