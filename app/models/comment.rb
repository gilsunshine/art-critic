class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :artwork
  has_many :votes
end
