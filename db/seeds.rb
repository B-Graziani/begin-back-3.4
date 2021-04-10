# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning Database"
Woman.destroy_all
puts "creating Database"
woman1 = { pseudo: "Nina", size: "163", weight: "55" }
woman2 = { pseudo: "Jessica", size: "165", weight: "55" }
woman3 = { pseudo: "Sarah", size: "167", weight: "55" }
woman4 = { pseudo: "Shanice", size: "170", weight: "55" }
woman5 = { pseudo: "Nikita", size: "155", weight: "55" }
Women = []
[woman1, woman2, woman3, woman4, woman5].each_with_index do |attributes, index|
woman = Woman.create!(attributes)
Women << woman
end
