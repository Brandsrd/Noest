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

15.times do
  Senior.create(
    naam: Faker::Name.first_name,
    achternaam: Faker::Name.last_name)
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
