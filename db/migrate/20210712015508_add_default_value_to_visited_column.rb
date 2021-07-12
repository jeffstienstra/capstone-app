class AddDefaultValueToVisitedColumn < ActiveRecord::Migration[6.1]
  def up
    change_column :favorites, :visited, :boolean, default: false
  end
  
  def down
    change_column :favorites, :visited, :boolean, default: nil
  end
end
