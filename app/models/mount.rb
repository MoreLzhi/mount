class Mount < ActiveRecord::Base
  #attr_accessible :description, :elevation, :title, :photo
  attr_protected :secret

  has_many :routes
  belongs_to :region

  mount_uploader :photo, PhotoUploader
end
