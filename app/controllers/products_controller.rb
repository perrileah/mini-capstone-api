class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    pp current_user
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    if current_user && current_user.admin
      @product = Product.new(
        name: params[:name],
        price: params[:price],
        description: params[:description],
        supplier_id: params[:supplier_id],
      )
      # if @product.valid? #happy path
      @product.save
      render :show
      # else #sad path
      #   render :json {errors: @product.errors.full_messages}
      # end
    else
      render json: {}, status: :unauthorized
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
      supplier_id: params[:supplier_id] || @product.supplier_id,
    )
    # if @product.valid? #happy path
    @product.save
    render :show
    # else #sad path
    #     render :json {errors: @product.errors.full_messages}
    # end

  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Destroyed!" }
  end
end
