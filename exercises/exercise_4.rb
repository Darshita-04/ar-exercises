require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create additional stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Output name and revenue of men's apparel stores
puts "Men's Apparel Stores:"
@mens_stores.each do |store|
  puts "#{store.name}: $#{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and generate < $1M revenue
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

# Output name and revenue of women's apparel stores under $1M
puts "Women's Apparel Stores (Revenue < $1M):"
@womens_stores.each do |store|
  puts "#{store.name}: $#{store.annual_revenue}"
end

