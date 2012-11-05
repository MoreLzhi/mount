class Mount < ActiveRecord::Base
  attr_accessible :description, :elevation, :title, :photo
  mount_uploader :photo, PhotoUploader
end
