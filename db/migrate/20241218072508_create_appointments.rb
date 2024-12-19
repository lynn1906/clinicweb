class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :patient, foreign_key: { to_table: :patients }
      t.references :employee, foreign_key: { to_table: :employees }
      t.date :appointment_date
      t.time :appointment_time
      t.string :reason

      t.timestamps
    end
  end
end