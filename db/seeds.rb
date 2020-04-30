# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

i = 1

City.destroy_all
puts "The list of the previous City were deleted"
40.times do 
  c = City.create!(
    city_name: Faker::Address.city
  )
i += 1
end
puts "#{i} City were created"

Dogsitter.destroy_all
puts "The list of the previous Dogsitter were deleted"
10.times do 
  ds = Dogsitter.create!(
    name: Faker::Name.first_name,
    city: City.all.sample
  )
i += 1
end
puts "#{i} Dogsitter were created"


Dog.destroy_all
puts "The list of the previous Dog were deleted"
10.times do 
  d = Dog.create!(
    dog_breed: %w[cocker labradore chihuahua malinois levrier caniche bulldog].sample,
    city: City.all.sample
  )
i += 1
end
puts "#{i} Dogsitter were created"

Stroll.destroy_all
puts "The list of the previous Stroll were deleted"
10.times do 
  s = Stroll.create!(
    dog: Dog.all.sample,
    dogsitter: Dogsitter.all.sample
  )
i += 1
end
puts "#{i} Dogsitter were created"



