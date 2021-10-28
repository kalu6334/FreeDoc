# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    doctor = Doctor.create!(
        first_name:Faker::Name.first_name,
        last_name:Faker::Name.last_name,
        speciality: ["Chirurgien","Ophtalmo","Cardio","Dermato","ORL","Neurologue","Generaliste","Rhumatologue","Urologue","Pédiatre"].sample,
        zip_code:Faker::Address.zip_code
    )
end 

50.times do 
    patient = Patient.create!(
        first_name:Faker::Name.first_name,
        last_name:Faker::Name.last_name,
    ) 
end 


100.times do 
    rendez_vous = Appointment.create!(doctor:Doctor.all.sample, patient:Patient.all.sample)
end




