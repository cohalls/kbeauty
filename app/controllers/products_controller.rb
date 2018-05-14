class ProductsController < ApplicationController
  def index
   @products = Product.all
  end
  def create
    @product = Product.new(productParams)
  end
  def update
    @product = Product.find(params[:id])
  end
  def about
  end
  private
  def productParams
  end
end
