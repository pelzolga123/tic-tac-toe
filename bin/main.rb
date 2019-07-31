# frozen_string_literal: true

require '../lib/game'
require '../lib/board'
require '../lib/player'

# main game loop
loop do
 
  game = Game.new

  # player turn loop
  #   loop do
  #     game.turn()
  #     break if game.end?
  #   end

  #   game.end_message

  # move this to game class also
  break unless game.play_again?
 
end
