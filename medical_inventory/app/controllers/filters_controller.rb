
class FiltersController < ApplicationController

    def index
      @products = Product.all
      @usuarios = User.all
      @laboratories = Laboratory.all
      search_products_by_lab
      search_products_by_user
      search_products_by_price
    end #index


    private

    def search_products_by_lab
      @products_by_lab = Product.where(laboratory_id: params[:laboratory_id])
    end #search_products_by_lab

    def search_products_by_user
      @products_by_user = Stock.where(user_id: params[:user_id])
    end #search_products_by_user

    def search_products_by_price
      @products_by_price = Product.where(price: params[:price])
    end

end #FiltersController
