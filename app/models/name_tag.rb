class NameTag < ApplicationRecord
  belongs_to :user
  has_many :name_tag_logos, dependent: :destroy
  has_many :logos, through: :name_tag_logos

  validates :publicity, inclusion: { in: [true, false]}
  
end
