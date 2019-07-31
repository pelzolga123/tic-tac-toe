# main.rb
require '../lib/player'
require '../lib/board'

loop do
  #   create_game
  #   create_board
  puts "Welcome to Tic Tac Toe!"

  print "Please enter name of player 1: "
  player_1_name = gets.chomp
  player_1 = Player.new(player_1_name, "X")
  
  print "Please enter name of player 2: "
  player_2_name = gets.chomp
  player_2 = Player.new(player_2_name, "O")
  
  board = Board.new
  board.print
  board.place_mark(player_1.marker, 2)
  board.print
  

  #   loop do
  #     game.turn(current_player)
  #     break if game.winner? || game.draw?
  #   end

  #   game.display_winner || game.display_draw

  print "Would you like to play again? (y/n): "
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end
