class ProductcommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    productcomment = @product.productcomments.new(productcomment_params)

    productcomment.user_id = current_user.id


    if productcomment.save
      flash.now[:error] = nil
      redirect_to product_path(@product)
    end
  end

  private

  def productcomment_params
    params.require(:productcomment).permit(:message)
  end
end
