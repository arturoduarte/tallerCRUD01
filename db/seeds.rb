# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.all.destroy_all
Category.all.destroy_all


10.times do |i|
	Category.create(name:"Animals#{i}")
end

categories = Category.all
50.times do
	Product.create(
	name: Faker::Dog.name, 
	price: Random.rand(1000..5000), 
	category: categories.sample
	)
end

