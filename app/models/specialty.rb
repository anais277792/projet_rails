class Specialty < ApplicationRecord
    has_many :join_doctor_specialties
    has_many :doctor, through: :join_doctor_specialties
end
