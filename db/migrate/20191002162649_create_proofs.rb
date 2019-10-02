class CreateProofs < ActiveRecord::Migration[5.1]

  def up
    create_table :proofs do |t|
      t.string :type_proof , :limit=>25
      t.text :content
      t.integer :the_case_id
      #date of add and edit
      t.timestamps
    end
  end
  
  def down
    drop_table :proofs
  end
end
