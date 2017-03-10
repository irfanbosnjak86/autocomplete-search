class Tagging < ApplicationRecord
  belongs_to :company
  belongs_to :category_tag
end
