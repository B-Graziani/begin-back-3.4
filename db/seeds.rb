# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning Database"
Girl.destroy_all
puts "creating Database"
girl1 = { name: "Nina", size: "163", weight: "55", rating: "5" }
girl2 = { name: "Jessica", size: "165", weight: "55", rating: "3" }
girl3 = { name: "Sarah", size: "167", weight: "55", rating: "3" }
girl4 = { name: "Shanice", size: "170", weight: "55", rating: "5" }
girl5 = { name: "Nikita", size: "155", weight: "55", rating: "5" }
Girls = []
[girl1, girl2, girl3, girl4, girl5].each_with_index do |attributes, index|
girl = Girl.create!(attributes)
Girls << girl
end
