class Offer < ActiveRecord::Base
    validates :shop_name, :price_in_cents, :shipping_price_in_cents, :address, presence: true
    belongs_to :product
end