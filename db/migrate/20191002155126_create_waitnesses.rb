class CreateWaitnesses < ActiveRecord::Migration[5.1]
  
  def up
    create_table :waitnesses do |t|
      t.string :cin , :limit=>8
      t.string :first_name , :limit=>30
      t.string :last_name , :limit=>30
      t.string :telephone , :limit=>8
      t.text :content

      t.timestamps
    end
  end
  
  def down
    drop_table :waitnesses
  end
end
