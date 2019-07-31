# frozen_string_literal: true

require '../lib/game'
require '../lib/board'
require '../lib/player'

# main game loop
loop do
  game = Game.new

  loop do
    game.turn
    break if game.end?
  end

  break unless game.play_again?
end
