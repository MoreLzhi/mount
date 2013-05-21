class Route < ActiveRecord::Base
  attr_protected :secret
  belongs_to :mount
  belongs_to :region
  belongs_to :continent
  belongs_to :user

  mount_uploader :photo, PhotoUploader
end
