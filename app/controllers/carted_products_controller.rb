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
    else #sad pathmodf
      render json: { errors: @carted_product.errors.full_messages }
    end
  end

  def index
    if current_user
      @carted_products = current_user.carted_products
      render :index
    else
      render json: [], status: :unauthorized
    end
  end

  # def show
  #   @carted_product = CartedProduct.find_by(id: params[:id])
  #   render :show
  # end
end
