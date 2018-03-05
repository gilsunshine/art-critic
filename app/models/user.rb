class User < ApplicationRecord
  has_secure_password
  has_many :artworks
  has_many :comments
  has_many :votes
end
