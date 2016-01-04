# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

15.times do
  Senior.create(
    naam: Faker::Name.first_name,
    achternaam: Faker::Name.last_name)
end

15.times do
  Mantelzorger.create(
    voornaam: Faker::Name.first_name,
    achternaam: Faker::Name.last_name)
end

