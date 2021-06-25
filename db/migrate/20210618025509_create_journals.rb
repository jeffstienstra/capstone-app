class CreateJournals < ActiveRecord::Migration[6.1]
  def change
    create_table :journals do |t|
      t.string :title
      t.string :body
      t.string :date
      t.integer :favorite_id

      t.timestamps
    end
  end
end
