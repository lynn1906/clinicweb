class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :employee

    validates :patient_id, presence: true
    validates :employee_id, presence: true
    validates :appointment_date, presence: true
    validates :appointment_time, presence: true
    validates :reason, presence: true
end
