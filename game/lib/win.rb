#Check for win.

def win(board)

    #Set out each win condition
    win = [[0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6]]

    #Use win condition to get 3 index numbers to check board at. Loop over
    #each win condition
    win.each{|combo|
    index_0 = combo[0]
    index_1 = combo[1]
    index_2 = combo[2]
    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]

    #Cheack for three X's or O's at the board indices determined by win
    #conditions
    if position_1 == " X" && position_2 == " X" && position_3 == " X"
        return "X"
    elsif position_1 == " O" && position_2 == " O" && position_3 == " O"
        return "O"
    end}
    return false
end