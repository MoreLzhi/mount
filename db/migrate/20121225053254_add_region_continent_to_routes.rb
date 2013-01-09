class AddRegionContinentToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :continent_id, :integer
    add_column :routes, :region_id, :integer
  end
end
