# game.rb

class Game

  def initialize()
    
    @board = Board.new
    self.welcome
    @player1 = Player.new(1, 'X')
    @player1.prompt_for_name
  
    @player2 = Player.new(2, 'O')
    @player2.prompt_for_name
  
    @board.display

    @current_player = [@player1, @player2].sample(1) # (initially random, switch on each turn)
  
    
  end
  def welcome
    puts 'Welcome to Tic-Tac-Toe!'
  
  end 

  def play_again?
    print 'Would you like to play again? (y/n): '
    gets.chomp.downcase.start_with?('y')
  end

  def switch_player
     @current_player = @current_player == @player1 ? @player2 : @player1
  end 

  def turn

  end

  def end?
     board.winner? || board.draw? 
  end
end




# Methods:

#   - #turn(player, board)
#     - board.place_piece
#     - check #end?
#   - #end?
#     board.winner? || board.draw?
#   - #end
#     - display welcome message
