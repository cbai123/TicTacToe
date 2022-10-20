#Stalemate if all the places on the board are full and win hasn't been triggered

def stalemate(board)
    board.all? do |x| 
        x == " X" || x == " O"
    end
end