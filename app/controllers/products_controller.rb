class ProductsController < ApplicationController
  def index
   @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.create(product_params)
    redirect_to product_path(@product)
  end
  def update
    @product = Product.find(params[:id])
  end
  def about
  end
  private
  def product_params
    params.require(:product).permit(:name, :brand, :price)
  end
end
