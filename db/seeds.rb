# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

products = Product.create([{ name: "Kale", price: 2.00, image_url: "http://t2.gstatic.com/licensed-image?q=tbn:ANd9GcRmVjronTbz8hfpJp2ysUwhcCXFj_7RZJNBK7Q1sm3ZXPDS5cSCxXuxIopOMcz8K8jmmK84dK5gx519JfA", description: "a cruciferous vegetable from the mustard family" }, { name: "Beet", price: 1.00, image_url: "http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcQSOX5GV0DhrFzCAzrSNx5DlbyntGuL6Z2tlXEfmZKdo23vpEq4nt6mbXLiZItak1HshdVr_TCi44gyp70", description: "a root vegetable that grows as a round bulb with a leafy top poking out above the soil" }, { name: "Swiss_Chard", price: 4.00, image_url: "https://noshingwiththenolands.com/wp-content/uploads/2020/08/Swiss-Chard-2-Custom.jpg", description: "a leafy green vegetable that is related to beets and spinach" }, { name: "Broccoli", price: 5.00, image_url: "https://cdn.britannica.com/15/136015-050-42C0D895/Broccoli.jpg", description: "an edible green plant in the cabbage family" }])
