class ProductsController < ApplicationController
  def show_all
    @products = Product.all
    render template: "products/index"
  end

  def show_product_one
    @product = Product.first
    render template: "products/show"
  end

  def show_product_two
    @product = Product.second
    render template: "products/show"
  end
end
