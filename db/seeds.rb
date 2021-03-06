# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
3.times do
  user = User.new(
    username: Faker::Lorem.characters(6),
    password: Faker::Lorem.characters(10)
    )
  user.save!
end
users = User.all

puts "3 users created"