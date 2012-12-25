class AddMountRegionRelation < ActiveRecord::Migration
  def change
    add_column :mounts, :region_id, :integer
  end
end
