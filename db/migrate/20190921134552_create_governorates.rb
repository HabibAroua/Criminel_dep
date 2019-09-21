class CreateGovernorates < ActiveRecord::Migration[5.1]
  
  def up
    create_table :governorates do |t|
      t.string :name
      t.integer :population
      t.string :zone
      t.timestamps
    end
  end
  
  def down
    drop_table :governorates
  end
  
end
