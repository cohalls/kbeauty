class ProductsController < ApplicationController
  def index
   @products = Product.all
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.new(productParams)
    redirect_to root_path
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
