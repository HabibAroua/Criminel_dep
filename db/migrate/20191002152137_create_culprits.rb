class CreateCulprits < ActiveRecord::Migration[5.1]
  
  def up
    create_table :culprits do |t|
      t.string :cin , :limit=>8
      t.string :first_name , :limit=>30
      t.string :last_name , :limit=>30
      t.date :date_of_birth
      t.string :charged_for , :limit=>40
      t.string :status , :limit=>30
      t.text :content
      t.integer :the_case_id
      #date of add and edit this object
      t.timestamps
    end
  end
  
  def down
    drop_table :culprits
  end
  
end
