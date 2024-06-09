class NameTag < ApplicationRecord
  belongs_to :user

  validates :publicity, inclusion: { in: [true, false]}
  
end
