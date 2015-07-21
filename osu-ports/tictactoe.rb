# Author:           James Spolsdoff
# Date Created:		7/19/15
# Filename:		    tictactoe.rb
#
# Basic game of Tic Tac Toe using 2d arrays

game_board = [ [ '.', '.', '.'],
			   [ '.', '.', '.'],
			   [ '.', '.', '.']]

def print_board(game_board)
  game_board.each do |row|
    row.each_with_index do |col, index|
      print "#{col} "
      index += 1
      if index == 3
      	puts ""
      end
    end
  end
end

def store_move(player, game_board)
  game_board[1,0] = "X"  	
end  

print_board(game_board)
store_move(1, game_board)
print_board(game_board)

  