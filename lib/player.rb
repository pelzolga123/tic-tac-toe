# frozen_string_literal: true

# Player class
class Player
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end

end
