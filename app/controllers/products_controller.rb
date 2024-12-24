class ProductsController < ApplicationController
  after_action :register_visit, only: [:show]

  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def show
    @product = Product.find(params[:id])
    @main_photo = @product.images.first
    @category = Category.find_by(id: @product.category_id)
    @country = Country.find_by(id: @product.country_id)
    set_page_option
  end

  helper_method :recent_products
  attr_accessor :product

  def recent_products
    [] if recently.none?
    Product.where(id: recently)
  end

  def recently
    session[:viewed_products] ||=  []
  end

  def register_visit
    session[:viewed_products] ||= []
    session[:viewed_products] = ([product.id] + session[:viewed_products])
                                    .uniq
                                    .take(3)
  end



  def set_page_option
    set_meta_tags product.slice(:name_rus)
  end

end
