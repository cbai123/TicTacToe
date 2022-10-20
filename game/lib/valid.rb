#Checks validity of move by checking if space is empty, and that the move was between 1-9

def valid(board, player)
    if board[player - 1] != "  " || player <= 0 || player > 9
        return false
    end
    return true
end