# Author:                     James Spolsdoff
# Date Created:               6/15/15
# Last Modified Date:         6/15/15
# Filename:                   fireslaw.rb
#
# Overview:
# This program tests to see if a meeting room is in violation of the fire
# regulations regarding the maximum room capcity. It will tell you how many
# more people can attend if you are under the limit. If you are over the limit
# it will tell you how many people must leave the meeting.

puts "\nTHE FIRE LAW COMPLIANCE PROGRAM\n\n"
puts "Before you can host your meeting we need to make sure that you are in compliance with the fire law."
puts "If you are in compliance I will tell you how many more people you can invite to your meeting."
puts "If you are not in compliance I will tell you how many people you need to ask to leave.\n\n"

print "What is the capacity of the meeting room: "
room_capacity = gets.to_i

print "How many people will attend the meeting : "
attendees = gets.to_i

if (attendees > room_capacity)
  abort("You are in violation of the fire law and you must ask " + (attendees - room_capacity).to_s + " to leave.")
end

puts "You are in compliance with the fire law and can invite " + (room_capacity - attendees).to_s + " more people
to the meeting"

