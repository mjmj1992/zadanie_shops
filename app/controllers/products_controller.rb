class ProductsController < ApplicationController
  
  def index
    products = shop.products
    @view = ProductsPresenter.new(products)
  end

  def show
    product = shop.products.find(params[:id])
    @view = ProductPresenter.new(product)
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path
  end

  private

  def shop
    Shop.last
  end

end
