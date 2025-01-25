class ArticlesController < ApplicationController
  before_action :authenticate_user!
  def index
    @articles = Article.where(user_id: current_user.id)
    @admin_articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  private

  def article_params
    params.require(:article).permit(:product_id, :message, :user_id)
  end
end
