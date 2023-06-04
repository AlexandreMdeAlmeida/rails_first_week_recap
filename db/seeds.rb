# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Dropping data..."
Post.destroy_all
puts "Creating new seed"
5.times do | index |
  puts "creating #{index + 1} Post"
  Post.create(title: Faker::Book.title, content: Faker::Lorem.paragraph)
  puts "#{index + 1} Post created!"
end
