class UpdatePatientsTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :detail, :string 
   
    add_column :patients, :visit_date, :date
    add_column :patients, :diagnosis, :text
    add_column :patients, :treatment, :text
    add_column :patients, :prescription, :text
    add_column :patients, :notes, :text
  end
end
