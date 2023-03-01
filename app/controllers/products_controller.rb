class ProductsController < ApplicationController
  def show_all
    @products = Product.all
    render template: "products/index"
  end
end
