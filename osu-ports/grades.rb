# Author:           James Spolsdoff
# Date Created:		7/19/15
# Filename:		    grades.rb
#
# Asks the user to fill in an array with grades and displays a basic histograph

grades = { "A" => 0, "B" => 0, "C" => 0, "D" => 0, "F" => 0, }

puts "Enter letters grades when prompted. When you are done press enter."

begin
  print "Please enter a letter grade:"
  input = gets.chomp

  if input == ""
    break
  end 

  if input.upcase == "A"
  	grades["A"] += 1
  elsif input.upcase == "B"
    grades["B"] += 1
  elsif input.upcase == "C"
  	grades["C"] += 1
  elsif input.upcase == "D"
  	grades["D"] += 1
  elsif input.upcase == "F"
  	grades["F"] += 1
  else
  	puts "Your entry was invalid please try again."
  end

end until input == ""

grades.each do |key, hash|
	print "#{key}: "
	hash.times do
	  print "+"
	end
	puts ""
end