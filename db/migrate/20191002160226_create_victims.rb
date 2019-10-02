class CreateVictims < ActiveRecord::Migration[5.1]
  
  def up
    create_table :victims do |t|
      t.string :cin
      t.string :first_name
      t.string :last_name
      t.string :problem
      t.string :cause_of_death
      t.date :date_of_death

      t.timestamps
    end
  end
  
  def down
    drop_table :victims
  end
  
end
