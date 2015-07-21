# Author:           James Spolsdoff
# Date Created:		6/17/15
# Filename:		    recFun.rb
#
# Asks the user to fill an array of integers then sort from smallest to largest and display

number_storage = Array.new
number = nil

puts "Please enter nubmers to fill the array. Press enter when you are done."

until number == 0 do
  print "Please enter an integer :"
  number = gets.chomp.to_i

  if number == 0
    break
  end

  number_storage.push(number)
end

number_storage.sort!

number_storage.each do |n|
  print "#{n}, "
end