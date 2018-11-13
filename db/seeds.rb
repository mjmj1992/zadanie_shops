# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shop = Shop.create(name: 'Main Shop')
shop.products.create(name: 'Main Product 1', price_in_cents: 100, brand: 'Brand 1', model: 'Model 1', address: 'SOME EXAMPLE ADDRESS 22/12')
shop.products.create(name: 'Main Product 2', price_in_cents: 200, brand: 'Brand 1', model: 'Model 2', address: 'ANOTHER EXAMPLE ADDRESS 2/6')
shop.products.create(name: 'Main Product 3', price_in_cents: 1500, brand: 'Brand 2', model: 'Model ZXC', address: 'ONE MORE EXAMPLE ADDRESS 7/8')