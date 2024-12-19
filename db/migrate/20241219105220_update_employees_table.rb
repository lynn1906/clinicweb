class UpdateEmployeesTable < ActiveRecord::Migration[7.0]
  def chance
    add_reference :employees, :user, foreign_key: true
  end
end
