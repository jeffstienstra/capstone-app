class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorites, :api_id, :parkCode
  end
end
