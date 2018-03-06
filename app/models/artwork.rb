class Artwork < ApplicationRecord
  has_many :artwork_tags
  has_many :tags, through: :artwork_tags
  has_many :comments
  has_many :votes
  belongs_to :user

  mount_uploader :image, ImageUploader

  validates_processing_of :image
  validate :image_size_validation

  private
    def image_size_validation
      errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
    end
end
