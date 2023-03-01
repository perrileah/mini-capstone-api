Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "show_all"

  get "/product_one", controller: "products", action: "show_product_one"
end
