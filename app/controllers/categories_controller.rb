class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @page_title = t('category.category')
  end

  def show
    @category = Category.find(params[:id])
    @page_title = @category.name_rus if params != true and params[:locale] != 'ru' and params[:locale] != 'en'
    @page_title = @category.name_rus if params[:locale] == 'ru'
    @page_title = @category.name_eng if params[:locale] == 'en'
  end

  private

end
