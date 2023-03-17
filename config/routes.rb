Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"

  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"

  post "/cartedproducts" => "carted_products#create"
  get "/cartedproducts" => "carted_products#index"
  delete "/cartedproducts/:id" => "carted_products#destroy"
end
