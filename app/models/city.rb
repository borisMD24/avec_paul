class City < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    has_many :patients, through: :appointments
end


=begin
   d1 = Doctor.new 
   d1 = Doctor.new 
   d1 = Doctor.new 
   d1 = Doctor.new 
   d1 = Doctor.new 
    p1 = Patient.new
    p1 = Patient.new
    p1 = Patient.new
    p1 = Patient.new
    p1 = Patient.new
    v1 = Ville.new
    v1 = Ville.new
    v1 = Ville.new

   a =  apointement.new(d1, p1, v1)

=end