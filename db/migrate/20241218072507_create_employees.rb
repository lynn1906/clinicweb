class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :position
      t.date :hire_date
      t.integer :contact

      t.timestamps
    end
  end
end
