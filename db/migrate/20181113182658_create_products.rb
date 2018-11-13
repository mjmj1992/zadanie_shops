class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string      :name, null: false
      t.integer     :price_in_cents, default: 0, null: false
      t.string      :brand, null: false
      t.string      :model, null: false
      t.text        :address, null: false
      t.references  :shop
      t.timestamps
    end
    add_foreign_key :products, :shops, column: :shop_id
  end
end
