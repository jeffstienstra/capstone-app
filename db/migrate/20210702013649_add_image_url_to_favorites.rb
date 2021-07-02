class AddImageUrlToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :image_url, :string
  end
end
