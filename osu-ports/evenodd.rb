# Author:           James Spolsdoff
# Date Created:		7/19/15
# Filename:		    evenodd.rb
#
# Asks the user to fill an array of integers. Will return the sum of even and odd
# numbers in an array.

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

odd_sum = 0
even_sum = 0

number_storage.each do |n|
  if n.even?
  	even_sum += n
  else
  	odd_sum += n
  end
end

puts "The sum of odd numbers in the array is: #{odd_sum}"
puts "The sum of the even nubmers in the array is : #{even_sum}"