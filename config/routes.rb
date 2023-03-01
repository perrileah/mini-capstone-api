Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "show_all"

  get "/one_product/:id", controller: "products", action: "show_one_product"
end
