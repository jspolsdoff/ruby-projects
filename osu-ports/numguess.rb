# Author:           		    James Spolsdoff
# Dated Created:                    6/15/15
# Filename:                         numGuess.rb
#
# Overview:
# This is a two player number guessing game. One player will be asked for a 
# secret number. The next player will have three guesses to get the number
# right. The program will keep track of the guess and let the player know if they
# too high, low, or exactly correct.

require 'io/console'

puts "\nWELCOME TO THE NUMBER GUESSING GAME\n\n"
		
puts "This is a two player number guessing game. The first player will select the secret number."
puts "The second player will have three chances to guess the number. After every guess you will be told
if your guess is too high, too low, or spot on.\n"

current_player = 1

begin
  print "\nPlayer " + current_player.to_s + " please enter a secret number from 1 - 100: "
  secret_number = STDIN.noecho(&:gets).to_i  

  while secret_number > 100  || secret_number < 1 do
    print "Your input is out of range. Please enter a number between 1 - 100: "
    secret_number = STDIN.noecho(&:gets).to_i
    puts "\n"
  end

  puts "\n\nThanks! Now let's get this game starts.\n\n"

  for i in 1..3 
    print "Player " + current_player.to_s + " please make guess " + i.to_s + " of 3: "
    player_guess = gets.to_i

    if player_guess > secret_number 
      puts "Your guess was too high!"
    end
    
    if player_guess < secret_number 
      puts "Your guess was too low!"
    end

    if player_guess == secret_number 
      puts "Awesome! You guessed the secret number!"
      break
    end
  end

  print "Do you want to play again(Y/N): "
  play_again = gets.chomp.upcase

end until play_again == "N" 
