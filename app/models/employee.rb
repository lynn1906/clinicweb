class Employee < ApplicationRecord
    has_many :appointments
    belongs_to :user, optional: true

    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :position, presence: true
    validates :hire_date, presence: true
    validates :contact, presence: true, numericality: { only_integer: true }, length: { in: 10..11 }, format: { with: /\A0?\d{9,10}\z/, message: "must be a valid phone number with 10 or 11 digits" }


end
