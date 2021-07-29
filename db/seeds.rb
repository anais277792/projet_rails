# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

20.times do 
    doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Cannabis.medical_use , zip_code: Faker::Address.zip_code)
    patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    
end

20.times do 
    Appointment.create(date: Faker::Date.in_date_period, doctor_id:rand(1..20), patient_id:rand(1..20))
end

20.times do
    specialty = Specialty.create(name: Faker::Cannabis.medical_use)
end

20.times do 
    join = JoinDoctorSpecialty.create(doctor_id:rand(1..20), specialty_id:rand(1..20))
end