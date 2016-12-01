class StaticPagesController < ApplicationController

  def index
    find_overdue_stocks
    find_products_by_user
    find_products_by_lab
  end

  def find_products_by_lab
    @product_by_lab = Product.where("laboratory_id = '1'")
  end

  def find_products_by_user
    @products_by_user = Stock.where("user_id = '1'")
  end

  def find_overdue_stocks
    @overdue_stocks = Stock.where("due_date > ?", Date.today)
  end

end
