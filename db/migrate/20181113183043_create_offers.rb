class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string      :shop_name, null: false
      t.integer     :price_in_cents, default: 0, null: false
      t.integer     :shipping_price_in_cents, default: 0, null: false
      t.text        :address, null: false
      t.references  :product
      t.boolean     :rejected, null: false, default: false
      t.timestamps
    end
    add_foreign_key :offers, :products, column: :product_id
  end
end
