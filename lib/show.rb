require 'pry'
require_relative 'boardcase'
require_relative 'board'
require_relative 'player'
require_relative 'game'
require_relative 'application'

class Show
  def initialize(my_application, photo_moment)
    my_board = Board.new
    my_board.boardcase = my_application.game.photo[photo_moment]
    my_board.hashtag
  end

end

#binding.pry
