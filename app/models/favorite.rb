class Favorite < ApplicationRecord
  # validates :parkCode, uniqueness: true
  has_many :journals
  belongs_to :user
end
