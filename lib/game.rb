# frozen_string_literal: true

# Game class
class Game
  def initialize
    @board = Board.new
    display_welcome_message
    @player1 = Player.new(1, 'X')
    @player1.prompt_for_name
    @player2 = Player.new(2, 'O')
    @player2.prompt_for_name
    @current_player = [@player1, @player2].sample(1)[0]
  end

  def display_welcome_message
    system 'clear'
    puts 'Welcome to Tic-Tac-Toe!'
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def turn
    switch_player
    @board.display

    selection = ''
    loop do
      puts "#{@current_player.name}(#{@current_player.marker}), it's your turn."
      print 'Enter your selection (1-9): '
      selection = gets.chomp.to_i
      break if @board.valid_selection?(selection) && (1..9).include?(selection)

      puts 'Sorry, that selection is invalid!'
    end

    @board.place_mark(@current_player.marker, selection)
    @board.display
  end

  def end?
    if @board.winner?
      @board.display
      puts "#{@current_player.name} is the winner!"
      true
    elsif @board.draw?
      @board.display
      puts "It's a draw!"
      true
    else
      false
    end
  end

  def play_again?
    print 'Would you like to play again? (y/n): '
    gets.chomp.downcase.start_with?('y')
  end
end
