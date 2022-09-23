# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Begin seeding!"

c1 = Client.create!(name: "Morning", email: "morning@gmail.com", password: "123456", address: "89 Morning Avenue", phone_number: 123456789, about: "hello it is morning client", website_url: "morningclient.com")

m1 = Model.create!(name: "Iris", email: "iris@gmail.com", password:"123456", location: "New York", phone_number: 123456789, agency: "Eve Agency", about: "Nice to meet you!", status: true, ethnicity: "Chinese", gender: "Female", height: 175)

Booking.create!(name: "Iris", appointment: Date.parse("2021-05-10"), location: "Manhattan", industry: "Fashion", description: "I want to model", model: m1, client: c1)

puts "Finished seeding!"
