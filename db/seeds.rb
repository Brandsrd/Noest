# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# db/seeds.rb voorbeeld college Le Wagon
# require 'faker'

# Creating 100 fake restaurants
# 100.times do
#  restaurant = Restaurant.new({
#    name: Faker::Company.name,
#    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#    rating: (0..5).to_a.sample
#  })
#  restaurant.save
# end


require 'faker'

30.times do
  Senior.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email,
    address: Faker::Address.street_address)
end

30.times do
 InformalCareProvider.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email,
    password: Faker::Internet.password,
    address: Faker::Address.street_address)
end






# 15.times do
#   Mantelzorger.create(
#     voornaam: Faker::Name.first_name,
#     achternaam: Faker::Name.last_name)
# end

# 15.times do
#   Ondersteuner.create(
#     voornaam: Faker::Name.first_name,
#     achternaam: Faker::Name.last_name)
# end
