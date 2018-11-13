class Product < ActiveRecord::Base
    validates :name, :price_in_cents, :brand, :model, :address, presence: true
    belongs_to :shop
    has_many :offers, dependent: :destroy
end