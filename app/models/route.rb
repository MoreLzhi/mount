class Route < ActiveRecord::Base
  attr_protected :secret
  belongs_to :mount
  
  #name
  #difficult
  #description
  #подход
  #has_many photos
  #has_may schemas
  #has_may comments


  mount_uploader :photo, PhotoUploader
end
