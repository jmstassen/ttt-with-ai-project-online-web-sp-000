require 'pry'

module Players
  class Computer < Player

  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

  def move(board)
    # win(board)
    prevent_loss(board)
    # maximize_potential_victories
  end

  def win(board)
    token = Player.token
    WIN_COMBINATIONS.each do |combo|
      if board[combo[0]] == token && board[combo[1]] == token && board[combo[2]] = " "
        return combo[2]
      elsif board[combo[0]] == token && board[combo[2]] == token && board[combo[1]] = " "
        return combo[1]
      elsif board[combo[1]] == token && board[combo[2]] == token && board[combo[0]] = " "
        return combo[0]
      end
    end
  end

  def prevent_loss(board)
    if board.cells[4] == " "
      "5"
    elsif board.cells[0] == " "
      "1"
    elsif board.cells[2] == " "
      "3"
    elsif board.cells[6] == " "
      "7"
    elsif board.cells[8] == " "
      "9"
    elsif board.cells[1] == " "
      "2"
    elsif board.cells[3] == " "
      "4"
    elsif board.cells[5] == " "
      "6"
    elsif board.cells[7] == " "
      "8"
    end
  end





    #if you have 2 in a win combination, take the 3rd one
    #if competitor has 2 in a win combination, take the 3rd one
    #otherwise take the open space that is in the most win combinations



  end
end
