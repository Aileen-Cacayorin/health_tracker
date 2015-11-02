# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

foods = [
  ["papaya", "one", 150],
  ["chicken", "5 oz", 275],
  ["soda", "12 oz", 140],
  ["almonds", "2 oz", 105],
  ["tea", "8 oz", 0],
  ["potato chips", "1 10oz bag", 200],
  ["rice", "1 cup", 175]
]


foods.each do |name, quantity, calories|
  Food.create( name: name, quantity: quantity, calories: calories)
end
