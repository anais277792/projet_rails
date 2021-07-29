class Appointment < ApplicationRecord
    #lie app et doc , doc est une entrée optionnelle
    belongs_to :doctor, optional: true 
    belongs_to :patient, optional: true
end
