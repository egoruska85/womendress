class HomeController < ApplicationController
  def index
    @logo = Sitedetail.first.logo
    @products = Product.all
  end
end
