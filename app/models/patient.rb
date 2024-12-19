class Patient < ApplicationRecord
    has_many :patient_records
    has_many :appointments, dependent: :destroy

    validates :lastname, presence: true
    validates :firstname, presence: true
    validates :gender, presence: true
    validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
    
    validates :contact, presence: true, numericality: { only_integer: true }, length: { in: 10..11 }, format: { with: /\A\d{10,11}\z/, message: "must be a valid phone number with 10 or 11 digits" }
    validates :emergency_contact, presence: true, numericality: { only_integer: true }, length: { in: 10..11 }, format: { with: /\A\d{10,11}\z/, message: "must be a valid phone number with 10 or 11 digits" }
    
    validates :date_of_birth, presence: true
    validates :visit_date, presence: true
    validates :diagnosis, presence: true
    validates :treatment, presence: true
    validates :prescription, presence: true
    
end
