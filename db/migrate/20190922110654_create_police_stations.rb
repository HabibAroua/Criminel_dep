class CreatePoliceStations < ActiveRecord::Migration[5.1]
  
  def up
    create_table :police_stations do |t|
      t.string :title , :limit =>60
      t.string :address , :limit =>50
      t.integer :postal_code
      t.string :telephone , :limit =>8
      t.string :fax , :limit =>8
      t.integer :governorate_id
      t.timestamps
    end 
  end
  
  def down
    drop_table :police_stations
  end
end
