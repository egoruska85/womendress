class BackendsController < ApplicationController
  def index
    @backend = Backend.last
    @sitedetail = Sitedetail.last
    @contact = Contact.new
  end
end
