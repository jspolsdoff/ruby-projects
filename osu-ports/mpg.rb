# Name:			James Spolsdoff
# Date Created:		6/17/15
# Filename:		mgp.rb
#
# This program will take the users input of miles driven and gasoline used in liters and return mpg.

# define method to convert and calculate mileage
def mileage_calc (liters_consumed, miles_driven)
  liter_per_gallon = 0.264179
  mileage = (miles_driven / (liters_consumed * liter_per_gallon)).round(2)
end

puts "\nMPG CONVERTER\n\n"

puts "This program will convert an input of liters and miles driven to miles per gallon.\n"

begin
  print "How many liters of gasoline did your car consume: "
  liters_consumed = gets.to_i

  print "How many miles did you drive: "
  miles_driven = gets.to_i

  mpg = mileage_calc(liters_consumed, miles_driven) 

  puts "Your gas mileage is #{mpg}mpg"

  print "Make another calculation(Y/N): "
  another_calculation = gets.chomp.upcase

end until another_calculation == "N"
