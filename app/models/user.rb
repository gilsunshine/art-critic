class User < ApplicationRecord
  has_secure_password

  has_many :artworks
  has_many :votes
  has_many :comments
end
