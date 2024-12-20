class HomeController < ApplicationController
  before_action :set_page_option
  def index
    @carouseles = Carousel.all
    @products = Product.where(top: true)
  end

  def set_page_option
    @page_title = t('page_title').capitalize!
    @page_description = t('page_description')
    @page_keywords = t('page_keywords')
  end
end
