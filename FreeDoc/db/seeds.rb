require 'faker'

50.times do 
    d = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
    pa = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

50.times do
 app= Appointment.create(date:Faker::Date.in_date_period)
end

50.times do
    specialty = Specialty.create(specialties:Faker::Job.field)
end
