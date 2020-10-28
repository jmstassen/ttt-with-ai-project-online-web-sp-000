require 'pry'

module Players
  class Computer < Player

  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]


  def move(board)
    win_count = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    flattened = WIN_COMBINATIONS.flatten
    label = 0
    flattened.each do |index|
      if board.cells[index] == " "
        win_count[label] += 1
      else
      end
    end
    binding.pry
    #win_count.key(win_count.values.max)
  end



    # def move(board)
    #   if board.cells[4] == " "
    #     "5"
    #   elsif board.cells[0] == " "
    #     "1"
    #   elsif board.cells[2] == " "
    #     "3"
    #   elsif board.cells[6] == " "
    #     "7"
    #   elsif board.cells[8] == " "
    #     "9"
    #   elsif board.cells[1] == " "
    #     "2"
    #   elsif board.cells[3] == " "
    #     "4"
    #   elsif board.cells[5] == " "
    #     "6"
    #   elsif board.cells[7] == " "
    #     "8"
    #   end
    # end

    #if you have 2 in a win combination, take the 3rd one
    #if competitor has 2 in a win combination, take the 3rd one
    #otherwise take the open space that is in the most win combinations



  end
end
