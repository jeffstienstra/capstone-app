class FavoritesController < ApplicationController
  def index
    favorites = Favorite.all.order(:park_name)
    render json: favorites
  end
end
