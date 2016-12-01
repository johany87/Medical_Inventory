class StaticPagesController < ApplicationController

  def index
    search_overdue_stocks
  end

  def search_overdue_stocks
    @overdue_stocks = Stock.where("due_date < ?", Date.today)
  end

end
