# Tic Tac Toe

main game logic loop (main.rb)

main loop
  create_game
  create_board
  display welcome message
  prompt for player 1 name
  create_player 1 object
  prompt for player 2 name
  create_player 2 object

  loop do
    game.turn(current_player)
    break if game.winner? || game.draw?
  end

  board.display
  game.display_winner || game.display_draw

end

## Classes

### Game
Initialize:
  - new board (board object)
  - new player (player object)
  - new player (player object)
  - current_player (initially random, switch on each turn)
Attributes:
  - @game_board (board object)
  - @player_1 (player object)
  - @player_2 (player object)
  - current_player = @player_1 || @player_2
Methods:
  - #game_won?
      board.winner?
  - #game_drawn?
      board.draw?
  - #switch_players
  - #turn(player, board)
      board.display_board
  - #display_winner
  - #display_draw

### Board
Attributes:
  - WINNING_LINES = [
      [1, 2, 3], # Row 1
      [4, 5, 6], # Row 2
      [7, 8, 9], # Row 3
      [1, 4, 7], # Col 1
      [2, 5, 8], # Col 2
      [3, 6, 9], # Col 3
      [1, 5, 9], # Dia 1
      [3, 5, 7], # Dia 2
    ]
  - @board = {}

Methods:
  - #display
    displays the game board to the terminal
  - #initialize (can be done in game initialize method)
    (1..9).each_with_object({}) { |n, board| board[n] = INITIAL_MARKER }
  - #place_mark(player, position)

  - #winner?(player)
      does the current players markers match one of the winning combos?
      WINNING_LINES.each do |line|
        return true if board.values_at(*line).count(player.MARKER) == 3
      end
      false
  - #draw?
      is the board full without a winner?
      !winner && board.all? { |e| e == " " }

### Player
Attributes:
  - @name
  - MARKER
Methods:
  - prompt and set name
