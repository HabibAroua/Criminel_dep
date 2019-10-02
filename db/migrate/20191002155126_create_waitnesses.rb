class CreateWaitnesses < ActiveRecord::Migration[5.1]
  
  def up
    create_table :waitnesses do |t|
      t.string :cin
      t.string :first_name
      t.string :last_name
      t.string :telephone
      t.text :content

      t.timestamps
    end
  end
  
  def down
    drop_table :waitnesses
  end
end
