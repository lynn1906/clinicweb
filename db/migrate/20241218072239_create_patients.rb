class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.integer :age
      t.integer :contact
      t.integer :emergency_contact
      t.date :date_of_birth
      t.string :detail

      t.timestamps
    end
  end
end
