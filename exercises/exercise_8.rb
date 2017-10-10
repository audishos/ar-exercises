require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
# require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store = Store.last
@employee = @store.employees.new(
  first_name: 'John',
  last_name: 'Smith',
  hourly_rate: 40
)

@employee.save

puts "Employee password: #{@employee.password}"
