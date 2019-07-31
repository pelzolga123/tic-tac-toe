# frozen_string_literal: true

require '../lib/game'
require '../lib/board'
require '../lib/player'

# main game loop
loop do
  # game = Game.new

  # Move all of the following to game class
  board = Board.new
  puts 'Welcome to Tic-Tac-Toe!'

  player1 = Player.new(1, 'X')
  player1.prompt_for_name

  player2 = Player.new(2, 'O')
  player2.prompt_for_name

  board.display

  # player turn loop
  #   loop do
  #     game.turn()
  #     break if game.end?
  #   end

  #   game.end_message

  # move this to game class also
  print 'Would you like to play again? (y/n): '
  break unless gets.chomp.downcase.start_with?('y')
end
