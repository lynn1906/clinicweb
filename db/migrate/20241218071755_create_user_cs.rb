class CreateUserCs < ActiveRecord::Migration[7.0]
  def change
    create_table :user_cs do |t|
      t.string :username
      t.string :password
      t.string :role
      t.string :email
      t.integer :contact

      t.timestamps
    end
  end
end
