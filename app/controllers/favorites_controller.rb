class FavoritesController < ApplicationController
  def index
    favorites = Favorite.all.order(:id)
    render json: favorites
  end
end
