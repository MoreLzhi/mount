class User < ActiveRecord::Base
  authenticates_with_sorcery!
  rolify

  mount_uploader :avatar, AvatarUploader
end
