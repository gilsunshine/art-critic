class Vote < ApplicationRecord
  belongs_to :artwork
  belongs_to :comment
  belongs_to :user
end
