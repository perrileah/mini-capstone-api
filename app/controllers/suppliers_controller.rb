class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render :index
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render :show
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
      supplier_id: params[:supplier_id],
    )
    if @supplier.valid? #happy path
    @supplier.save
    render :show
    else #sad path
      render :json {errors: @supplier.errors.full_messages}
    end
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.update(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
      supplier_id: params[:supplier_id],
    )
    if @supplier.valid? #happy path
      @supplier.save
      render :show
    else #sad path
        render :json {errors: @supplier.errors.full_messages}
    end
    
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    render json: { message: "Destroyed!" }
  end




end
