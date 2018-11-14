class ProductPresenter < BasePresenter
    include ActionView::Helpers::NumberHelper
  
    def initialize(product)
        @product = product
    end

    def product
        { 
            id: @product.id,
            name: @product.name,
            human_price: human_price(@product.price_in_cents),
            brand: @product.brand,
            model: @product.model,
            address: @product.address
        }
    end

    def offers
        @product.offers.order(:id).map do |offer| 
            { 
                id: offer.id,
                human_price: human_price(offer.price_in_cents),
                human_shipping_price: human_price(offer.shipping_price_in_cents),
                address: offer.address,
                rejected: offer.rejected,
                human_rejected: human_rejected(offer.rejected)
            }
        end
    end

    private

    def human_price(price_in_cents)
        number_to_currency((price_in_cents.to_f / 100).round(2))
    end

    def human_rejected(rejected)
        rejected ? 'Yes' : 'No'
    end
  end
  