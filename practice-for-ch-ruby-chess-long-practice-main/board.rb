require_relative piece

class Board

  def initialize()
    @board = Array.new(8) {Array.new(8, nil)}
    populate_piece 
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @board[row][col] = val
  end

  def move_piece(start_pos, end_pos)
    if @board[start_pos].empty? && @board[end_pos].empty?
      start_pos = end_pos
    else
      raise "starting position or end position invalid"
    end
  end

  def populate_piece
    @board.each_with_index do |row, i|
      row.map! { |ele| Piece.new{if [0,1,6,7].include?(i) }}
    end
  end

end

