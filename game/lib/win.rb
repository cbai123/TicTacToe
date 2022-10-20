def win(board)

    win = [[0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6]]

    win.each{|combo|
    index_0 = combo[0]
    index_1 = combo[1]
    index_2 = combo[2]
    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]

    if position_1 == " X" && position_2 == " X" && position_3 == " X"
        return "X"
    elsif position_1 == " O" && position_2 == " O" && position_3 == " O"
        return "O"
    end}
    return false
end