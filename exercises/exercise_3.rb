require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Load the third store
@store3 = Store.find(3)

# Delete the third store
@store3.destroy

# Output the total number of stores to verify deletion
puts "Total number of stores after deletion: #{Store.count}"
