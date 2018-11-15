class OffersController < ApplicationController
  
  def new
    @product = shop.products.find(params[:product_id])
    @offer = @product.offers.new
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path
  end

  def create
    product = shop.products.find(params[:product_id])
    offer = product.offers.new(permitted_params)
    offer.shop_name = shop.name
    if offer.valid?
      offer.save
      redirect_to product_path(product.id)
    else
      render 'new'
    end
  end

  def reject
    product = shop.products.find(params[:product_id])
    offer = product.offers.find(params[:offer_id])
    offer.rejected = !offer.rejected
    if offer.save!
      render json: {status: :ok, rejected: offer.rejected}
    else
      render json: {status: :error, msg: 'Something went wrong'}
    end
  end

  private

  def shop
    Shop.last
  end

  def permitted_params
    params.require(:offer).permit(:price_in_cents, :shipping_price_in_cents, :address)
  end

end
