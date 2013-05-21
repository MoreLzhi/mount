class Region < ActiveRecord::Base
  attr_protected :secret

  belongs_to :continent
  belongs_to :user
  has_many :mounts 
  has_many :routes, :through => :mount

  #name
  #description
  #photo
  #has_many photos
  mount_uploader :photo, PhotoUploader
end
