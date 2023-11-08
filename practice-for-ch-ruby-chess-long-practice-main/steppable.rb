module Stepable

  # collect all the moves that a stepable piece can move to
  def moves
    # create an array to collect moves

    # iterate through each of the piece's possible move_diffs
      # for each diff, increment the piece's position to generate a new position
      # add the new position to the moves array if it is:
        # valid, on the board and empty
        # OR on the board and contains a pice of the opposite color

    # return final array of moves
  end

  private

  def move_diffs
    # subclass implements this
    raise NotImplementedError # 
  end
end
