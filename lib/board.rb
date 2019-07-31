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
    [3, 5, 7], # Dia 2
  ]

    def initialize 
        @board =  (1..9).each_with_object({}) { |n, board| board[n] = INITIAL_MARKER}
    end

    def place_mark(marker, position)
        @board[position] = marker
    end

    def print
        p @board
    end
end