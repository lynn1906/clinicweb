class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :employee
    belongs_to :user, foreign_key: 'created_by', optional: true
  
    enum status: { pending: "pending", confirmed: "confirmed", cancelled: "cancelled" }
  
    validates :patient_id, presence: true
    validates :employee_id, presence: true
    validates :appointment_date, presence: true
    validates :appointment_time, presence: true
    validates :reason, presence: true
    validates :status, presence: true
end
