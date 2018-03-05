class Artwork < ApplicationRecord
  has_many :artwork_tags
  has_many :tags, through: :artwork_tags
  has_many :comments
  has_many :votes
  belongs_to :users
end
