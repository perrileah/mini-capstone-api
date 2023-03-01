class ProductsController < ApplicationController
  def show_all
    @products = Product.all
    render template: "products/index"
  end

  def show_one_product
    product = Product.find_by(id: params[:id])
    render json: { message: "hello" }
  end
end
