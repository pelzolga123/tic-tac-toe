# frozen_string_literal: true

require '../lib/game'
require '../lib/board'
require '../lib/player'

# Main game loop
loop do
  system 'clear'
  puts 'Welcome to Tic-Tac-Toe!'

  board = Board.new
  player_names = []
  2.times do |i|
    print "Please enter name of player #{i + 1}: "
    player_names << gets.chomp
  end
  player1 = Player.new(player_names[0], 'X')
  player2 = Player.new(player_names[1], 'O')
  game = Game.new(board, player1, player2)

  # Player turn loop
  loop do
    game.switch_player
    system 'clear'
    puts board.display

    selection = ''
    loop do
      puts "#{game.current_player.name}(#{game.current_player.marker}), it's your turn."
      print 'Enter your selection (1-9): '
      selection = gets.chomp.to_i
      break if board.valid_selection?(selection) && (1..9).include?(selection)

      puts 'Sorry, that selection is invalid!'
    end

    game.turn(selection)
    break unless game.state == :active
  end
  system 'clear'
  puts board.display

  puts game.state == :winner ? "#{game.current_player.name} wins!" : "It's a draw!"

  print 'Would you like to play again? (y/n): '
  play_again = gets.chomp.downcase.start_with?('y')
  break unless play_again
end
