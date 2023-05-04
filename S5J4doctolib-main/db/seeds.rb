# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

#perform le seed
def perform
  Doctor.destroy_all
  Patient.destroy_all
  Appointment.destroy_all
  City.destroy_all
  Specialty.destroy_all
  Medecine.destroy_all
  10.times do
    create_cities
    create_specialties
  end
  puts "10 villes et 10 spécialités ont été créées"
  10.times do
    create_doctors
    create_patients
  end
  puts "10 docteurs, 10 patients ont été créés"
  10.times do
    create_appointments
    create_medecines
  end
  puts "10 rdv et 10 rapports de spécialité ont été créés"
end



#seed doctors table
def create_doctors
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  zip_code = Faker::Code.nric
  city = City.all.sample

  Doctor.create!(first_name: first_name, last_name: last_name, zip_code: zip_code, city: city)
end

#seed patients table
def create_patients
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  city = City.all.sample
  Patient.create!(first_name: first_name, last_name: last_name, city: city)
end

#seed appointments table
def create_appointments
  date = Faker::Date.in_date_period
  doctor = Doctor.all.sample
  patient = Patient.all.sample
  city = City.all.sample
  Appointment.create!(date: date, doctor: doctor, patient: patient, city: city)
end

#seed cities table
def create_cities
  name = Faker::Address.city
  City.create!(name: name)
end

#seed specialties table
def create_specialties
  name = Faker::Lorem.words(number: 1)
  Specialty.create!(name: name)
end

#seed medecines table
def create_medecines
  doctor = Doctor.all.sample
  specialty = Specialty.all.sample
  Medecine.create!(doctor: doctor, specialty: specialty)
end

perform
