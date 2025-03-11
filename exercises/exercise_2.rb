require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first and second stores
@store1 = Store.find(1)
@store2 = Store.find(2)

# Update the first store's name
@store1.update(name: "New Burnaby")

# Output confirmation
puts "Updated store name: #{@store1.name}"
