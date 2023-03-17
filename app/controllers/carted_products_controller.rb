class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    if @carted_product.save
      render :show
    else #sad path
      render json: { errors: @carted_product.errors.full_messages }
    end
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render :index
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id: params[:id], status: "carted")
    carted_product.update(status: "removed")
    redner json: { status: "Carted product successfully removed!" }
  end
end

# def show
#   @carted_product = CartedProduct.find_by(id: params[:id])
#   render :show
# end
