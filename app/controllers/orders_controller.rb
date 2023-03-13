class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    if @order.save
      render :show
    else
      render json: { errors: @order.errors.full_messages }
    end
  end

  # def show
  #   @order = current_user.orders.find_by(id: params[:id])
  #   render :show
  # end

  def index
    if current_user
      @orders = current_user.orders
      render :index
    else
      render json: [], status: :unauthorized
    end
  end
end
