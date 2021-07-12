class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.integer :user_id
      t.string :photo_description
      t.string :image_url
      t.string :latitude
      t.string :longitude
      t.string :plant_name
      t.string :common_name
      t.string :edible_parts
      t.string :propagation_methods
      t.string :synonyms
      t.string :wiki_description
      t.string :wiki_citation_url
      t.string :wiki_license_name
      t.string :wiki_license_url

      t.timestamps
    end
  end
end
