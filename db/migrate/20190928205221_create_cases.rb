class CreateCases < ActiveRecord::Migration[5.1]
  
  def up
    create_table :cases do |t|
      t.string :title , :limit => 50
      t.string :type , :limit => 50
      t.string :complainant_cin , :limit=>8
      t.string :complainant_first_name , :limit=>30
      t.string :complainant_last_name , :limit=>30
      t.string :complainant_telephone , :limit=>8
      t.string :location
      t.string :address

      t.timestamps
    end
  end
  
  def down
    drop_table :cases
  end
end
