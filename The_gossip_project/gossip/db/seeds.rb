require 'faker'
#création de données aléatoire pour des users
10.times do 
    user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.matz, email: Faker::Internet.email, age: Faker::Number.within(range: 18..59))
end
#création de données aléatoire pour des city
20.times do 
    city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end
#création de données aléatoire pour des gossips
20.times do 
    gossip = Gossip1.create(title: Faker::Movie.title, content: Faker::String.random)
end
#création de données aléatoire pour des tags
10.times do 
    tag = Tag.create!(title: Faker::Movie.quote)
end

#10.times do 
 #   ms = Private_messages.create
  #  ms.content = "Yopsi dopsi t'es  malade" + index.to_s
   # ms.save
#end