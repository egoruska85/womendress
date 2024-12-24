class ArticlesController < ApplicationController
  before_action :authenticate_user!
  def index
    @rticles = Article.where(user_id: current_user.id)
  end
end
