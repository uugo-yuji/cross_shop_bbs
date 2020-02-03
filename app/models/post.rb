class Post < ApplicationRecord
  has_many :tag_maps
  has_many :tags, through: :tag_maps
end
