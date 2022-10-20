#Checks validity of move by checking if space is empty. Also prevents empty
#guess registering as 0

def valid(board, player)
    if board[player - 1] != "  " || player == 0
        return false
    end
    return true
end