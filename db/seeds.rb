require 'faker'

50.times do
    dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, age: Faker::Number.within(range: 18..30) )
    dog = Dog.create!(dog_name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, age: Faker::Number.within(range: 1..10))
end
50.times do
    stroll = Stroll.create(date:Faker::Date.in_date_period)
end

50.times do
    city = City.create(city_names:Faker::Address.city)
end