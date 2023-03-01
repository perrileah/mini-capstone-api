# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

products = Product.create([{ name: "Banana", price: 2.00, image_url: "banana_image_url", description: "a yellow, edible fruit that is botanically a berry" }, { name: "Apple", price: 1.00, image_url: "apple_image_url", description: "an edible fruit of the rose family" }, { name: "Frozen_Pizza", price: 4.00, image_url: "frozen_pizza_url", description: "a simple and delicious dinner" }, { name: "Eggs", price: 5.00, image_url: "eggs_image_url", description: "oval object that cracks open" }])
