require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Calculate total revenue of all stores
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for all stores: $#{total_revenue}"

# Calculate average annual revenue
average_revenue = Store.average(:annual_revenue)
puts "Average annual revenue per store: $#{average_revenue.to_i}"

# Count stores generating $1M or more in annual revenue
million_plus_stores = Store.where("annual_revenue >= ?", 1000000).count
puts "Number of stores generating $1M or more: #{million_plus_stores}"

