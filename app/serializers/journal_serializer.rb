class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :date, :favorite_id, :latitude, :longitude, :image
end
