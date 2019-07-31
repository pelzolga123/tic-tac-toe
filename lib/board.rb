# frozen_string_literal: true

# Board class
class Board
  INITIAL_MARKER = ' '
  WINNING_LINES = [
    [1, 2, 3], # Row 1
    [4, 5, 6], # Row 2
    [7, 8, 9], # Row 3
    [1, 4, 7], # Col 1
    [2, 5, 8], # Col 2
    [3, 6, 9], # Col 3
    [1, 5, 9], # Dia 1
    [3, 5, 7]  # Dia 2
  ].freeze

  def initialize
    @board = (1..9).each_with_object({}) { |n, board| board[n] = INITIAL_MARKER }
  end

  def display
    # system 'clear'
    puts ''
    puts '       |       |       '
    puts "   #{@board[1]}   |   #{@board[2]}   |   #{@board[3]}   "
    puts '       |       |       '
    puts '-----------------------'
    puts '       |       |       '
    puts "   #{@board[4]}   |   #{@board[5]}   |   #{@board[6]}   "
    puts '       |       |       '
    puts '-----------------------'
    puts '       |       |       '
    puts "   #{@board[7]}   |   #{@board[8]}   |   #{@board[9]}   "
    puts '       |       |       '
    puts ''
  end

  def place_mark(marker, position)
    @board[position] = marker
  end

  def winner?
    WINNING_LINES.each do |line|
      return true if @board.values_at(*line).count('X') == 3 ||
                     @board.values_at(*line).count('O') == 3
    end

    false
  end

  def draw?
    !winner? && @board.values.none? { |e| e == INITIAL_MARKER }
  end
end
