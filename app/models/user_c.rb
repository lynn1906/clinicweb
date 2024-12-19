class UserC < ApplicationRecord
    has_many :employees

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :role, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :contact, presence: true, numericality: true
    
end
