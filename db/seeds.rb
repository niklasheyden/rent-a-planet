# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
Planet.destroy_all
User.destroy_all

p 'generating planets'

5.times do
  user = User.create!(
      {
        # name: Faker::FunnyName.name,
        email: Faker::Internet.email,
        password: '123456'
      }
    )
  p user
end
p "#{User.count} were created"

User.all.each do |user|
  rand(1..4).times do

    planet = Planet.create!(
      {
        name: Faker::Movies::StarWars.planet,
        location: Faker::Space.galaxy,
        price: rand(5000..15_000),
        description: "Big and nice, this modern planet presents itself with a small plot in front, on which a beach chair conveys the right cosmic flair. In there somewhere there is a space cabine with a single bed and seating, a small kitchenette and a bathroom with shower.",
        user_id: user.id
      }
    )
  end
p "#{Planet.count} were created"

 # planet.user = user


end


