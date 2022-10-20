def stalemate(board)

    board.all? do |x| 
        x == " X" || x == " O"
    end

end