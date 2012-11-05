# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base

  # Include RMagick or ImageScience support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick
  # include CarrierWave::ImageScience

  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end

  version :medium do
     process :resize_to_fill => [300, 200]
  end

  version :thumb do
     process :resize_to_fill => [85, 85]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
