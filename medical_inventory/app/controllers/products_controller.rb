class ProductsController < ApplicationController

  def index
    @products = Product.all
  end #index

  def new
    @product = Product.new
    @laboratories = Laboratory.all
  end #new

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product created Ok"
      redirect_to products_path
    else
      render 'new'
    end #if
  end #create

  def destroy
    find_product
  if @product.destroy
      flash[:success] = "Product Destroyed Successfully"
  else
      flash[:error] = "Houston we are in troubles, please try later"
  end #if
    redirect_to products_path
  end #destroy

  def edit
    find_product
    @laboratories = Laboratory.all
  end #edit

  def update
    find_product
    if @product.update(product_params)
      flash[:success] = "Product updated"
      redirect_to products_path
    else
      flash[:error] = "Product can´t updated"
      render 'new'
    end #if
  end #update

  def find_product
    @product = Product.find_by(id: params[:id])
  end #find_product

  def show
    find_product
    @laboratories = Laboratory.all
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :avatar, :laboratory_id)
  end #product_params

end #ProductsController
