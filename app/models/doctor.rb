class Doctor < ApplicationRecord
    #lie la table doc à la table app
    has_many :appointments 
    #lie patients et doc via app
    has_many :patients, through: :appointments
    has_many :join_doctor_specialties
    has_many :specialty, through: :join_doctor_specialties
end
