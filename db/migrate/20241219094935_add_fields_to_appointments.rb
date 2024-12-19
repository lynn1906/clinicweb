class AddFieldsToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :status, :string
    add_column :appointments, :created_by, :integer
    add_column :appointments, :notes, :text

    add_foreign_key :appointments, :users, column: :created_by
  end
end
