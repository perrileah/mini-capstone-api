class ProductsController < ApplicationController
  def show_all
    render template: "products/index"
    @products = Product.all
  end
end
