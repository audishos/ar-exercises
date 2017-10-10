require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Audisho", last_name: "Sada", hourly_rate: 50)
@store1.employees.create(first_name: "Ben", last_name: "Hargreaves", hourly_rate: 55)
@store1.employees.create(first_name: "George", last_name: "Mantzioris", hourly_rate: 45)
@store2.employees.create(first_name: "Jason", last_name: "Ferguson", hourly_rate: 50)
@store2.employees.create(first_name: "Danny", last_name: "Phongsavath", hourly_rate: 54)
@store2.employees.create(first_name: "Brady", last_name: "Penner", hourly_rate: 43)
@store2.employees.create(first_name: "Loi", last_name: "Nguyen", hourly_rate: 39)
