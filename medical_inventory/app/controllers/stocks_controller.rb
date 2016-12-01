class StocksController < ApplicationController

  def index
    @stocks = Stock.all
  end #index

  def new
    @stock = Stock.new
    @products = Product.all
    @users = User.all
  end #new

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      flash[:success] = "Stock created Ok"
      redirect_to stocks_path
    else
      render 'new'
    end #if
  end #create

  def destroy
    find_stock
  if @stock.destroy
      flash[:success] = "Stock Destroyed Successfully"
  else
      flash[:error] = "Houston we are in troubles, please try later"
  end #if
    redirect_to stocks_path
  end #destroy

  def edit
    find_stock
    @products = Product.all
    @users = User.all
  end #edit

  def update
    find_stock
    if @stock.update(stock_params)
      flash[:success] = "Stock updated"
      redirect_to stocks_path
    else
      flash[:error] = "Stock can´t updated"
      render 'new'
    end #if
  end #update

  def find_stock
    @stock = Stock.find_by(id: params[:id])
  end #find_stock

  def show
    find_stock
    @products = Product.all
    @users = User.all
  end

  private

  def stock_params
    params.require(:stock).permit(:product_id, :quantity, :user_id, :due_date)
  end #stock_params

end
