# Author:		James Spolsdoff
# Date Created:		6/17/15
# Filename:		hailstone.rb
#
# This program will take a user's integer input and run a hailstone method and tell the user
# how many steps it would take to reach 1.

def hailstone (start)
  if start == 1
    return 0
  elsif start % 2 == 0
    return 1 + hailstone(start / 2)
  else
    return 1 + hailstone(start * 3 + 1)
  end
end

def input_validation (user_input)
  until user_input.to_i.to_s == user_input && user_input.to_i > 0
    print "Your input was invalid. Please enter a number: "
    user_input = gets.chomp
  end
  user_input.to_i
end    

puts "\nHAILSTONE PROGRAM\n\n"
puts "This program will tell you the number of steps needed to get to one in a hailstone sequence
based on the integer you input."

print "Please enter an integer greater than zero: "
user_input = input_validation(gets.chomp)

puts "Your input of #{user_input} would require #{hailstone(user_input)} steps to get to one in a hailstone sequence"
