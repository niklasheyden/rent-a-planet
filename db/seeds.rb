# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


Planet.destroy_all
User.destroy_all

5.times do
  user = User.create!(
      {
        name: Faker::FunnyName.name,
        email: Faker::Internet.email,
        password: Faker::Internet.password
      }
    )
  p user
end


User.all.each do |user|
  rand(1..4).times do

    planet = Planet.create!(
      {
        name: Faker::Space.galaxy,
        location: Faker::Address.street_address,
        price: rand(5000..15_000),
        user_id: user.id
      }
    )
  end
 # planet.user = user


end


