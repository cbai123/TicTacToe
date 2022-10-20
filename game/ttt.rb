#!/usr/bin/env ruby
$LOAD_PATH << "./lib"
require("board_print.rb")
require("win.rb")
require("stalemate")
require("valid")


board_inputs = [" 1", " 2", " 3", " 4", " 5", " 6", " 7", " 8", " 9"]
board = ["  ", "  ", "  ", "  ", "  ", "  ", "  ", "  ", "  "]
dash = "--------"
player = 1

player_1_win = []
player_2_win = []
win = false
stalemate = false

board_print(board_inputs, dash)
board_print(board, dash)

while stalemate == false do

    while player == 1
        puts "Player 1, enter 1-9"
        player_1 = gets.chomp.to_i
        if valid(board,player_1)
            board[player_1 - 1] = " X"
            board_print(board, dash)
            player = 2
        end

    end
    
    if win(board)
        puts "#{win(board)} wins!"
        break
    end

    if stalemate(board) then puts "Stalemate!"; break end

    while player == 2
        puts "Player 2, enter 1-9"
        player_2 = gets.chomp.to_i
        if valid(board,player_2) 
            board[player_2 - 1] = " O"
            board_print(board, dash)
            player = 1
        end
        
    end
    
    if win(board) then
        puts "#{win(board)} wins!"
        break
    end

    if stalemate(board) then puts "Stalemate!"; break end
end
