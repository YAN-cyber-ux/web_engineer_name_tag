class Logo < ApplicationRecord
  mount_uploader :image_url, ImageUrlUploader

  has_many :name_tag_logos, dependent: :destroy
  has_many :name_tags, through: :name_tag_logos
end
