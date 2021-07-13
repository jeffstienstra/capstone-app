class Favorite < ApplicationRecord
  validates :parkCode, presence: true, uniqueness: true

  has_many :journals
  belongs_to :user
end
