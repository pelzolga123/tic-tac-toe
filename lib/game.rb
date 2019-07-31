# game.rb

# Initialize:
#   - new board (board object)
#   - new player (player object)
#   - new player (player object)
#   - current_player (initially random, switch on each turn)
# Attributes:
#   - @game_board (board object)
#   - @player_1 (player object)
#   - @player_2 (player object)
#   - current_player = @player_1 || @player_2
# Methods:
#   - #welcome
#     - display welcome message
#   - #switch_players
#   - #turn(player, board)
#     - board.place_piece
#     - check #end?
#   - #end?
#     board.winner? || board.draw?
#   - #end
#     - display welcome message
