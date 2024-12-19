class UserC < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :role, presence: true
    validates :email, presence: true, uniqueness: true
    validates :contact, presence: true, numericality: true
end
