class User < ApplicationRecord

  has_secure_password

  validates :username, uniqueness: true

  validates :name, presence: true
  validates :username, presence: true


  has_many :artworks
  has_many :votes
  has_many :comments

end
