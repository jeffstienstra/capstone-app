class AddColumnsToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :visited, :boolean
    add_column :favorites, :latitude, :string
    add_column :favorites, :longitude, :string
  end
end
