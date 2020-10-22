# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Begin destroy"

Appointment.destroy_all
City.destroy_all
Doctor.destroy_all
Patient.destroy_all

puts "Destroy Finished"

5.times do |id_t|
    id_t = id_t + 1
    puts "Generating Data#{id_t}"
    City.create(id: id_t, city:"city#{id_t}")
    Doctor.create(id: id_t, first_name: "doc_first#{id_t}", last_name: "doc_last#{id_t}", speciality: "spe#{id_t}", zip_code: id_t.to_s)
    Patient.create(id: id_t, first_name: "patient_first#{id_t}", last_name: "patient_last#{id_t}", age: 20, city: "paris")
end

25.times do |id|
    Appointment.create(date: Time.now.to_datetime, doctor_id: rand(0..4), patient_id: rand(0..4), city_id: rand(0..4))
    puts "Generating appointment #{id}"
end

puts "Generation complete"