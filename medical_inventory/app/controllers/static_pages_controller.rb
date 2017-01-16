class StaticPagesController < ApplicationController

  def index
    @usuarios = User.all
    search_overdue_stocks
  end

  def search_overdue_stocks
    @overdue_stocks = Stock.where("due_date < ?", Date.today).where("user_id = ?", current_user.id)
  end

end
