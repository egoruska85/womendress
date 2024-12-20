class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @main_photo = @product.images.first
    @category = Category.find_by(id: @product.category_id)
    @country = Country.find_by(id: @product.country_id)
  end
end
