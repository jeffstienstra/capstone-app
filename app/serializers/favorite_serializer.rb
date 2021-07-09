class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :park_name, :address, :parkCode, :image_url
  belongs_to :user
  has_many :journals
end
