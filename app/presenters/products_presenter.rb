class ProductsPresenter < BasePresenter
    include ActionView::Helpers::NumberHelper
  
    def initialize(products)
        @products = products
    end

    def products
        @products.map do |product| 
            { 
                id: product.id,
                name: product.name,
                human_price: human_price(product.price_in_cents),
                brand: product.brand,
                model: product.model
            }
        end
    end

    private

    def human_price(price_in_cents)
        number_to_currency((price_in_cents.to_f / 100).round(2))
    end
  
  end
  