class Company < ApplicationRecord
  has_many :taggings
  has_many :category_tags, through: :taggings
end
