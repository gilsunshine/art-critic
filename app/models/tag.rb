class Tag < ApplicationRecord
  has_many :artwork_tags
  has_many :artworks, through: :artwork_tags

  before_save :make_downcase

  def make_downcase
    if !self.name.present?
    self.name = self.name.downcase
    end
  end
end
