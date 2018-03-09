class Tag < ApplicationRecord
  has_many :artwork_tags
  has_many :artworks, through: :artwork_tags

  # before_save :capitalize
  #
  # def capitalize
  #   if self.name.present?
  #   self.name = self.name.capitalize
  #   end
  # end
end
