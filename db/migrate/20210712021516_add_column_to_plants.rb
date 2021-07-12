class AddColumnToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :is_plant, :boolean, default: false
  end
end
