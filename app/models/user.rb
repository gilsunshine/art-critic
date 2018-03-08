class User < ApplicationRecord

  has_secure_password

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true

  has_many :artworks
  has_many :votes
  has_many :comments

  mount_uploader :image, ImageUploader

  validates_processing_of :image
  validate :image_size_validation


  private
    def image_size_validation
      errors[:image] << "should be less than 600KB" if image.size > 0.6.megabytes
    end

end
