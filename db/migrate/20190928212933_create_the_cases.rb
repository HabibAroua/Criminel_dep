class CreateTheCases < ActiveRecord::Migration[5.1]
  
  def up
    create_table :the_cases do |t|
      t.string :title
      t.string :type_case
      t.string :complainant_cin
      t.string :complainant_first_name
      t.string :complainant_last_name
      t.string :complainant_telephone
      t.string :location
      t.string :address

      t.timestamps
    end
  end
  
  def down
    drop_table :the_cases
  end
  
end
