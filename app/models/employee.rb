class Employee < ApplicationRecord
    has_many :appointments

    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :position, presence: true
    validates :hire_date, presence: true
    validates :contact, presence: true, numericality: true
end
