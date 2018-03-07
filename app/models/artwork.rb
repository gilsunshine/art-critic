class Artwork < ApplicationRecord
  has_many :artwork_tags
  has_many :tags, through: :artwork_tags
  has_many :votes
  has_many :comments
  belongs_to :user

  mount_uploader :image, ImageUploader

  validates_processing_of :image
  validate :image_size_validation

  def self.search(search)
    if search
      where(["name LIKE ?", "%#{search}%"])
    else
      all
    end
  end

  def year
    if self.tags.all.present?
      self.tags.all.find{|t| t.category == "year"}
    end
  end

  def style
    if self.tags.all.present?
      self.tags.all.select{|t| t.category == "style"}
    else
      []
    end
  end

  def medium
    if self.tags.all.present?
      self.tags.all.select{|t| t.category == "medium"}
    else
      []
    end
  end

  def c_style
    if self.tags.all.present?
      self.tags.all.select{|t| t.category == "custom style"}
    else
      []
    end
  end

  def c_medium
    if self.tags.all.present?
      self.tags.all.select{|t| t.category == "custom medium"}
    else
      []
    end
  end

  def c_tag
    if self.tags.all.present?
      self.tags.all.select{|t| t.category == "custom tag"}
    else
          []
    end
  end

  def artist_name
    self.artist.name
  end

  private
    def image_size_validation
      errors[:image] << "should be less than 600KB" if image.size > 0.6.megabytes
    end
end
