class Artist < ActiveRecord::Base
  has_many :songs

  mount_uploader :image, ImageUploader


end
