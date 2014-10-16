# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# country_list = [
#   [ "Deutschland", 81831000 ],
#   [ "Frankreich", 65447374 ],
#   [ "Belgien", 10839905 ],
#   [ "Niederlande", 16680000 ]
# ]

# country_list.each do |country|
#   Country.create( :name => country[0], :population => country[1] )
# end

cust_list = [
  [ "Leonardo", "20141009", "Closed" ],
  [ "Michaelangelo", "20141009", "Closed" ],
  [ "Raphael", "20141009", "Closed" ],
  [ "Donatello", "20141009", "Open" ],
  [ "Made", "20141009", "Open" ],
  [ "Ketut", "20141009", "Open" ],
  [ "Nyoman", "20141009", "Open" ],
  [ "Komang", "20141009", "New" ],
  [ "Budi", "20141010", "New" ],
  [ "Ali", "20141010", "New" ],
  [ "Ani", "20141010", "New" ],
  [ "Ina", "20141010", "New" ],
  [ "Bambang", "20141010", "New" ]
]

cust_list.each do |customer|
  Customer.create( :name => customer[0], :date => customer[1], :status => customer[2] )
end

item_list = [
	[ "Veggie Sandwich", 1 ],
	[ "Bali Burger", 2 ],
	[ "Chicken Satay", 3 ],
	[ "Caesar Salad", 4 ],
	[ "Gado-Gado", 5 ],
	[ "Nasi Goreng", 6 ],
	[ "Pizza", 7 ]

]

item_list.each do |item|
	Item.create(:name => item[0], :customer_id => item[1] )
end

ing_list = [
	[ "Bread", 0.5, 1 ],
	[ "Burger Bun", 0.5, 2 ],
	[ "Chicken", 1.5, 3 ],
	[ "Lettuce", 0.5, 4 ],
	[ "Parmesan Cheese", 1.0, 4 ],
	[ "Old Cheese", 1.5, 2],
	[ "Cheese", 1.0, 7],
	[ "Olive Oil", 0.75, 4 ],
	[ "Butter", 0.5, 2],
	[ "Peanut Sauce", 0.5, 5],
	[ "Tomato", 0.25, 1],
	[ "Tomato", 0.25, 2],
	[ "Tomato", 0.25, 6],
	[ "Rice", 0.15, 6]
]

ing_list.each do |ingredient|
	Ingredient.create(:name => ingredient[0], :price => ingredient[1], :item_id => ingredient[2] )
end