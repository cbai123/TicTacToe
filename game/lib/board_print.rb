#prints board given by board input. Used to prevent repetition and tidy
#up main game file.

def board_print(board, dash)
    puts "#{board[0]}|#{board[1]}|#{board[2]}"
    puts dash
    puts "#{board[3]}|#{board[4]}|#{board[5]}"
    puts dash
    puts "#{board[6]}|#{board[7]}|#{board[8]}"
end