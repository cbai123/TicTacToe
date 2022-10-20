def valid(board, player)
    if board[player - 1] != "  " || player == 0
        return false
    end
    return true
end