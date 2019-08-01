# frozen_string_literal: true

# Board class
class Board
  INITIAL_MARKER = ' '

  def initialize
    @board = (1..9).each_with_object({}) { |n, board| board[n] = INITIAL_MARKER }
  end

  def display
    "
           |       |
       #{@board[1]}   |   #{@board[2]}   |   #{@board[3]}
           |       |
    -----------------------
           |       |
       #{@board[4]}   |   #{@board[5]}   |   #{@board[6]}
           |       |
    -----------------------
           |       |
       #{@board[7]}   |   #{@board[8]}   |   #{@board[9]}
           |       |
    "
  end

  def place_marker(position, marker)
    @board[position] = marker
  end

  def valid_selection?(position)
    @board[position] == INITIAL_MARKER
  end

  def winner?
    markers = @board.values
    lines = []
    # rows
    lines += markers.each_slice(3).to_a
    # cols
    lines += markers.each_slice(3).to_a.transpose
    # diagonals
    lines << [markers[0], markers[4], markers[8]]
    lines << [markers[2], markers[4], markers[6]]

    lines.any? { |line| line.all? { |m| m == 'X' } || line.all? { |m| m == 'O' } }
  end

  def draw?
    winner? == false && @board.values.none? { |marker| marker == INITIAL_MARKER }
  end
end
