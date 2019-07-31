# frozen_string_literal: true

# Player class
class Player
  attr_reader :number, :name, :marker

  def initialize(number, marker)
    @number = number
    @name = ''
    @marker = marker
  end

  def prompt_for_name
    print "Please enter name of player #{@number}: "
    @name = gets.chomp
  end
end
