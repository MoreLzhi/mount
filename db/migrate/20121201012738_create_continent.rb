class CreateContinent < ActiveRecord::Migration
  def change
    create_table :continents do |t|
      t.string :title
      t.timestamps
    end    
  end
end
