class AddDefaultValueToIsPublicColumn < ActiveRecord::Migration[6.1]
  def up
    change_column :journals, :is_public, :boolean, default: false
  end
  
  def down
    change_column :journals, :is_public, :boolean, default: false
  end
end
