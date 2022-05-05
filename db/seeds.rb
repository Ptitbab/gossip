# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do 
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, age: rand(1..99), description: Faker::Quote.matz, city_id: rand(1..10))
end

10.times do
    city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

20.times do
    gossip = Gossipthp.create!(title: Faker::Book.title, content: Faker::Book.author, user_id: rand(1..10), tagging_id: rand(1..20))
end

10.times do
    tag = Tag.create!(title: Faker::Book.genre, tagging_id: rand(1..20))
end

20.times do
    tagging = Tagging.create!(tag_id: rand(1..10), gossipthp_id: rand(1..10))
end

# 10.times do
#     privatemessage = PrivateMessage.create!(content: Faker::Movie.quote, recipient_id: rand(1..10), sender_id: rand(1..10))
# end

