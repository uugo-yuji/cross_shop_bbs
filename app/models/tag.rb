class Tag < ApplicationRecord
  has_many :tag_maps
  has_many :posts, through: :tag_maps
end
