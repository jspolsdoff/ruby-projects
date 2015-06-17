# Author:		James Spolsdoff
# Date Created:		6/17/15
# Filename:		
#
# This program will ask the user for their full name (first middle last) and put it in the format L, M, F
# it will ask the user for a high and low range and generate 10 random numbers between those two ranges.

puts "\nPlease enter your name in the format FIRST MIDDLE LAST"

user_full_name = gets.chomp.split(" ")

puts "\nChanging format to LAST, MIDDLE INITIAL, FIRST\n"

if user_full_name.size > 2
  first_name = user_full_name[0].to_s
  middle_initial = user_full_name[1].chars.first.to_s
  last_name = user_full_name[2].to_s

  print "Here is your name in the above format: #{last_name}, #{middle_initial} #{first_name}\n"

else
  first_name = user_full_name[0].to_s
  last_name = user_full_name[1].to_s

  print "Here is your name in the above format: #{last_name}, #{first_name}\n"
end

puts "Cool, now that we have that done let's generate some random numbers. Give me a low and high number
and I will generate 10 random numbers in between that range.\n"

print "What is the low number: "
low_number = gets.to_i

print "What is the high number: "
high_number = gets.to_i

for i in 1..10
  print "#{rand(low_number..high_number)} "
end

puts "\n"
