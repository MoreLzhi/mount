class CreateRegion < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.references :continent
      t.timestamps
    end
  end
end
