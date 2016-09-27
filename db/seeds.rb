# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do
  House.create(
    name:    'メゾン' + ForgeryJa(:name).last_name,
    price:   ForgeryJa(:monetary).popularity_money,
    address: ForgeryJa(:address).full_address,
    note:    Faker::Lorem.paragraphs
  )
end
