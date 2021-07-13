class AddColumnToJournals < ActiveRecord::Migration[6.1]
  def change
    add_column :journals, :parkCode, :string
  end
end
