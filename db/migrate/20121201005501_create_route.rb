class CreateRoute < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :title
      t.text :description
      t.string :difficulty
      t.string :photo
      t.references :mount

      t.timestamps
    end
  end
end
