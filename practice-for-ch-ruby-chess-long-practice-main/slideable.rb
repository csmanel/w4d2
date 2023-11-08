module Slideable

  HORIZONTAL_AND_VERTICAL_DIRS = [
    [-1, 0], # left 
    [1, 0], # right
    [0, -1], # up (vertical)
    [0, 1]  # down (vertical)
  ].freeze

  DIAGONAL_DIRS = [
    [-1, -1], # left + up 
    [1, -1], # right + up
    [-1, 1], # left + down
    [1, 1]  # right + down
  ].freeze

  def horizontal_and_vertical_dirs
    @horizontal_and_vertical_dirs
  end

  def diagonal_dirs
    @diagonal_dirs
  end

  def moves
    collect_moves = []
    move_dirs.each do |dx, dy|
      result = grow_unblocked_moves_in_dir(dx, dy)
      collect_moves << result
      # for each direction, collect all possible moves in that direction
      # add moves to our moves array
      #(use the `grow_unblocked_moves_in_dir` helper method)
    end
    # return the final array of moves (containing all possible moves in all directions)
    collect_moves 
  end

  private

  def move_dirs
    # subclass implements this
    raise NotImplementedError # this only executes if we don't implement in subclass
    # gets all possible moves based on direction 
  end

  # this helper method is only responsible for collecting the moves in a given direction. Not all directions
  # the given direction is represented by tow args, the combindation of a dx and dy
  def grow_unblocked_moves_in_dir(dx, dy)
    # create an array to collect moves

    # get the piece's current row and col 

    #in a loop:
      # increment the the piece's current rol and col by dx and dy to generate a new position
      # stop incrementing if our new position is invalid (i.e. not on the board)
      # if the new position is empty, the piece can move here, so add the new position to the moves array
      # if the new position is occupied with a pices of the opposite color, our piece can move here (to caputer the opposing pice), so add the new position ot our moves array
        # but, the piece cannot continue past this point. So stop the loop
      # if the new position is occupied by a piece of the same color 
        # stop looping, do not add new position to moves array


    # return the array of moves for a given direction
  end
end

# Note: you can invoke methods from the piece from within the module methods, and vice verca. Including a module sets up a two way street
      
