class PatientRecord < ApplicationRecord
    belongs_to :patients

    validates :visit_date, presence: true
    validates :dianosis, presence: true
    validates :treatment, presence: true
    validates :notes, presence: true
    validates :prescription, presence: true
end
