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
    HORIZONTAL_AND_VERTICAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    collect_moves = []
    move_dirs.each do |dx, dy|
      result = grow_unblocked_moves_in_dir(dx, dy)
      collect_moves << result
    end
    collect_moves 
  end

  def valid_pos?(pos)
    x, y = pos
    x < 7 && x > 0 && y < 7 && y > 0 
  end

  def empty?(pos)
    @board[pos].empty? 
  end

  private

  def move_dirs
    diagonal_dirs + horizontal_and_vertical_dirs
    # subclass implements this
    # raise NotImplementedError # this only executes if we don't implement in subclass
    # gets all possible moves based on direction 
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    # create an array to collect moves
    # color getter as well 
    x, y = self.position 
    new_position = [(dx + x), (dy + y)]
    valid_moves = []
    move = false

    until move 
      #remember condition for color and other bits 
      # if its empty (separate the two methods)
      if valid_pos?(new_position) && empty?(new_position)
        valid_moves << new_position
        new_position = [(dx + new_position[0]), (dy + new_position[1])]
      else
        move = true
      end
    end
    valid_moves
  end
  
end