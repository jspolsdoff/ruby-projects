# Author:		James Spolsdof
# Date Created:		6/13/15
# Filename:		arcade.rb
#
# This program is a translation of my CS161 program from C++ into Ruby. It will evaluate
# how many tickets the user has and tell them how many candy bars and gumballs they can get.
# The user prefers candy bars so the max numbers of candy bars will be first and the remaining
# tickets will be used for gumballs.

CANDY_BAR = 10
GUM_BALL = 3

puts "\nTHE ARCADE TICKET PROGRAM\n\n"

puts "Great job winning those tickets! I will help you convert your tickets into
candy bars and gumballs. Since you like candy bars the most I will first ell you the
max number of candy bars you can get. With the remainder I will tell you have many
gumballs you can get.\n\n"

puts "Candy bars cost 10 tickets."
puts "Gumballs cost 3 tickets.\n\n"

print "Let's get started! First tell me how many tickets you have: "

tickets = gets
tickets = tickets.chomp.to_i

if (tickets < 3)
  abort("I'm sorry you need at least 3 tickets to get a prize.")
end

puts "Wow great job winning all those tickets!\n\n"

users_candy_bars = tickets / CANDY_BAR
tickets_left_over = tickets - (users_candy_bars * CANDY_BAR)
users_gum_balls = tickets_left_over / GUM_BALL
tickets_left_over = tickets_left_over - (users_gum_balls * GUM_BALL)

puts "With a total of " + tickets.to_s + " tickets you won the following!\n\n"
puts "Candy Bars: " + users_candy_bars.to_s
puts "Gum Balls: " + users_gum_balls.to_s

if (tickets_left_over > 0)
  puts "Tickets Left Over: " + tickets_left_over.to_s
end
