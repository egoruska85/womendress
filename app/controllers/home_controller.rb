class HomeController < ApplicationController
  def index
    @logo = Sitedetail.first.logo
  end
end
