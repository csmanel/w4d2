require_relative 'board'
require_relative 'slideable'

class Piece

  include Slideable

  attr_accessor :position

  def initialize(position)
    # @color = color
    # @board = board
    @position = []
  end

  # def moves
  #   raise "Piece is missing #valid_move method"
  # end
end