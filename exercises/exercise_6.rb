require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1 = Store.find(1)
@store2 = Store.find(2)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 55)

@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 45)
@store2.employees.create(first_name: "Mark", last_name: "Brown", hourly_rate: 52)
@store2.employees.create(first_name: "Emily", last_name: "Clark", hourly_rate: 48)

