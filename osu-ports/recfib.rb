# Author:		James Spolsdoff
# Date Created:		6/17/15
# Filename:		recfib.rb
#
# Asks and displays the nth Fibonacci number from user input

def input_validation (user_input)
  until user_input.to_i.to_s == user_input && user_input.to_i > 0
    print "Your input was invalid. Please enter a number: "
    user_input = gets.chomp
  end
  user_input.to_i
end

def recursive_fib (n)
  if n <= 1
    n
  else
    recursive_fib(n-1) + recursive_fib(n-2)
  end
end

puts "This program will ask for an integer input and return the corresponding Fibonacci number.\n"
puts "\nNote: This program begins its Fibonacci number sequence with 1 and not 0.\n\n"

print "Please input an integer value: "
user_input = input_validation(gets.chomp)

puts "The Fibonacci number is: #{recursive_fib(user_input)}"
