# main.rb
require '../lib/player'

loop do
  #   create_game
  #   create_board
  puts "Welcome to Tic Tac Toe!"

  print "Please enter name of player 1: "
  player_1_name = gets.chomp
  # player_1 = Player.new(player_1_name, "X")
  puts "Player 1 is: #{player_1.name}"


  print "Please enter name of player 2: "
  player_2_name = gets.chomp
  # player_2 = Player.new(player_2_name, "O")
  puts "Player 2 is: #{player_2.name}"


  #   loop do
  #     game.turn(current_player)
  #     break if game.winner? || game.draw?
  #   end

  #   game.display_winner || game.display_draw

  print "Would you like to play again? (y/n): "
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end
