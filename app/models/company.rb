class Company < ApplicationRecord
  has_many :taggings
  has_many :category_tags, through: :taggings

  def self.search(term)
     if term
      company_name = Company.where('lower(name) like ?', "%#{term.downcase}%")  
      category_name = Company.joins(:category_tags).where('category_tags.name like ?', "%#{term.downcase}%")
      if company_name.empty?
        category_name
      else
        company_name
      end
    else
      all
    end
  end
end
