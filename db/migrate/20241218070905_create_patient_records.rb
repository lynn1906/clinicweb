class CreatePatientRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_records do |t|
      t.date :visit_date
      t.string :dianosis
      t.string :treatment
      t.string :notes
      t.string :prescription

      t.timestamps
    end
  end
end
