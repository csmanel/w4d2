module Slideable
    module Slideable

        #  HORIZONTAL_AND_VERTICAL_DIRS stores an array of horizontal and vertical directions
          # what a piece moves in a given direction it's row and/or col should increment by some value (change by some value)
          # ex: A piece starts at pos [3, 3] and it moves horizontally to the left 
            # it's position changes to [3, 2]
            # the row increased by 0 and col increased by -1
        HORIZONTAL_AND_VERTICAL_DIRS = [
          [:dx, :dy], # left [0, -1]
          [:dx, :dy], # right
          [:dx, :dy], # up (vertical)
          [:dx, :dy]  # down (vertical)
        ].freeze
      
        #  DIAGONAL_DIRS stores an array of diagonal directions
        DIAGONAL_DIRS = [
          [:dx, :dy], # left + up [-1, 1]
          [:dx, :dy], # right + up
          [:dx, :dy], # left + down
          [:dx, :dy]  # right + down
        ].freeze
      
      
        def horizontal_and_vertical_dirs
          # getter for HORIZONTAL_AND_VERTICAL_DIRS
        end
      
        def diagonal_dirs
          # getter for DIAGONAL_DIRS
        end
      
        # should return an array of all the places a Piece can move to
        def moves
          # create an array to collect moves
      
          # iterate over each of the directions in which a slidable piece can move
            # use the Piece subclass `#move_dirs` method to get the info on each direction 
            # for each direction, collect all possible moves in that direction
              # add moves to our moves array
              #(use the `grow_unblocked_moves_in_dir` helper method)
      
      
          # return the final array of moves (containing all possible moves in all directions)
        end
      
        private
      
        def move_dirs
          # subclass implements this
          raise NotImplementedError # this only executes if we don't implement in subclass
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
      
