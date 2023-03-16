class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
    )
    if @carted_product.save
      render :show
    else #sad path
      render json: { errors: @carted_product.errors.full_messages }
    end
  end

  def show
    @carted_product = CartedProduct.find_by(id: params[:id])
    render :show
  end
end
