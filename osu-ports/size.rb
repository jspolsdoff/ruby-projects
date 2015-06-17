# Author:		James Spolsdoff
# Date Created:		6/17/15
# Filename:		size.rb
#
# This program will tell the user the correct size hate, jacket, and pants to purchase based on their inputs.

# method to calculate hat size
def hat_size (weight, height)
  size = (weight / height) * 2.9
end

# method to calculate jacket size
def jacket_size (height, weight, age)
  adjustment = 0.13
  
  if age < 40
    age_factor = 0
  elsif age >= 40 && age < 50
    age_factor = 1
  elsif age >= 50 && age < 60
    age_factor = 2
  elsif age >= 60 && age < 70
    age_factor = 3
  elsif age >= 70 && age < 80
    age_factor = 4
  end

  size = ((height * weight) / 288) + (age_factor * adjustment)
end

# method to calculate waist size
def waist_size (weight, age)
  adjustment = 0.1
  waist = weight / 5.7

  if age >= 30
    
    for i in (30..age).step(2)
      waist += adjustment
    end
  end
  return waist.round(0)
end

# method to validate inputs
def input_validation (user_input)
  until user_input.to_i.to_s == user_input
    print "Your input was invalid. Please enter a number: "
    user_input = gets.chomp
  end
  user_input.to_i
end

puts "\nCLOTHING SIZE CALCULATOR!\n\n"
puts "This program will help you find a customers suit size based on their height, weight, and age.\n\n"

begin
  print "What is your height in inches: "
  height = input_validation(gets.chomp)
  print "What is your weight in pounds: "
  weight = input_validation(gets.chomp)
  print "What is your age in years: "
  age = input_validation(gets.chomp)

  puts "\nTheir hat size is: #{hat_size(weight, height)}"
  puts "Their jacket size is: #{jacket_size(height, weight, age)}"
  puts "Their waist size is: #{waist_size(weight, age)}\n"

  print "Make another calculation(Y/N): "
  another_calculation = gets.chomp.upcase
end until another_calculation == "N"
