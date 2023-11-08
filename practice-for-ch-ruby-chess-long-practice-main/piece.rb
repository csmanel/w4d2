class Piece

  attr_reader :position

  def initialize(color, board, position)
    @color = color
    @board = board
    @position = []
  end

  def moves
    raise "Piece is missing #valid_move method"
  end
end