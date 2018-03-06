class Artwork < ApplicationRecord
  has_many :artwork_tags
  has_many :tags, through: :artwork_tags
  has_many :votes
  has_many :comments
  belongs_to :user

  mount_uploader :image, ImageUploader

  validates_processing_of :image
  validate :image_size_validation

  def year=(year)
    @tag = Tag.find_or_create_by(category: :year, name: year)
    @artwork_tag = ArtworkTag.new(artwork_id: self.id, tag_id: @tag)
  end

  def year
    @tags = []
    @artwork_tags = ArtworkTag.find_by(artwork_id: self.id)
    Tag.all.each do |tag|
      if @artwork_tags
        @artwork_tags.each do |artwork_tag|
          if tag.id == artwork_tag.tag
            @tags << tag
          end
        end
      end
    end
    @tags.find{|tag| tag.category == "year"}
  end

  private
    def image_size_validation
      errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
    end
end
