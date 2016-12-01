
class FiltersController < ApplicationController

    def index
      search_products_by_lab
      search_products_by_user
    end #index

    def search_products_by_lab
      lab = Laboratory.find_by(id: params[:laboratory_id])
      @products_by_lab = Product.where("laboratory_id = ?", lab(id:))
    end #search_products_by_lab

    def search_products_by_user
      @products_by_user = Stock.where("user_id = '1'")
    end #search_products_by_user

end #FiltersController
