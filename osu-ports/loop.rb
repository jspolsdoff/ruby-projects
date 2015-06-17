# Author:	James Spolsdoff
# Date Created: 6/16/15
# Filename:	loop.rb
#
# This program will compare two strings and let the user know if they have the same content

puts "This program takes two strings that you input and compares them.\n\n"

print "Please enter your first string: "
first_string = gets

puts "\n"

print "Please enter your second string: "
second_string = gets

puts "\n"

if first_string == second_string
  puts "The strings are equal."
end

if first_string != second_string
  puts "The strings are not equal."
end
