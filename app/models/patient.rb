class Patient < ApplicationRecord
    has_many :patient_records
    has_many :appointments, dependent: :destroy

    validates :lastname, presence: true
    validates :firstname, presence: true
    validates :gender, presence: true
    validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :contact, presence: true, numericality: true
    validates :emergency_contact, presence: true, numericality: true
    validates :date_of_birth, presence: true
end
