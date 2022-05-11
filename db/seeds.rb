# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require "faker"

# categories = ["chinese", "italian", "japanese", "french", "belgian"]
# random_category = categories[Math.floor(Math.random() * myArray.length)];

# 5.times do |i|
#   Restaurant.create(name: Faker::Business, address: Faker::Address, category: random_category)
# end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 5134568796, category: "italian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 5134568796, category: "italian" }
korean_house =  { name: "Korean House", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 5134568796, category: "japanese" }
asian_food =  { name: "Asian Food", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 5134568796, category: "belgian" }
bbq_prime =  { name: "BBQ Prime", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 5134568796, category: "french" }

restaurants_arrey = [ dishoom, pizza_east, korean_house, asian_food, bbq_prime ]

restaurants_arrey.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
