# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing Database"
Restaurant.destroy_all

puts "Generating Fake Database"

5.times do
  Restaurant.create(
  name: Faker::Book.title,
  address: Faker::Address.city,
  phone_number: Faker::PhoneNumber.phone_number,
  category: "chinese")
end

puts "DB Created"
