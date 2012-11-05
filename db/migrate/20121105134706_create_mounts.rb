class CreateMounts < ActiveRecord::Migration
  def change
    create_table :mounts do |t|
      t.string :title
      t.text :description
      t.integer :elevation

      t.timestamps
    end
  end
end
