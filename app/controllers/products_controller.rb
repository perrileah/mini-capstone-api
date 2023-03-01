class ProductsController < ApplicationController
  def show_all
    @products = Product.all
    render template: "products/index"
  end

  def show_product_one
    @products = Product.first
    render json: @products
  end
end
