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

  before_create :make_picture

  def make_picture
    if !self.image.url.present?
      self.image.store!(File.open(File.join(Rails.root, "/app/assets/images/default-profile-pic.png")))
    end
  end

  private
    def image_size_validation
      errors[:image] << "should be less than 700KB" if image.size > 0.7.megabytes
    end

end
