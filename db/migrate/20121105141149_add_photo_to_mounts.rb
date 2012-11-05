class AddPhotoToMounts < ActiveRecord::Migration
  def change
    add_column :mounts, :photo, :string
  end
end
