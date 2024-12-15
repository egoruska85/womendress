class HomeController < ApplicationController
  def index
    @carouseles = Carousel.all
    @products = Product.where(top: true)
  end
end
