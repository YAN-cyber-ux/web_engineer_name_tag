class Logo < ApplicationRecord
  has_many :name_tag_logos, dependent: :destroy
  has_many :name_tags, through: :name_tag_logos
  
end
