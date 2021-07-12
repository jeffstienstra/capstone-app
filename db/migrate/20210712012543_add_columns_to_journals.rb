class AddColumnsToJournals < ActiveRecord::Migration[6.1]
  def change
    add_column :journals, :longitude, :string
    add_column :journals, :latitude, :string
    add_column :journals, :is_public, :boolean
  end
end
