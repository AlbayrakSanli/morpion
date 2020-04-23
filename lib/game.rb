require 'pry'
require_relative 'boardcase'
require_relative 'board'
require_relative 'player'

class Game
  attr_accessor :players, :board, :photo

  def initialize(player1, player2)
    @players = [player1, player2]
    @board = Board.new
    @photo = []
  end

  def photo_moment
    a = []
    @board.boardcase.each do |i|
      a << i
    end
    @photo << a
  end

  def count_x
    @board.boardcase.count("x")
  end

  def count_o
    @board.boardcase.count("o")
  end

  def tour
    if self.count_o < self.count_x
      puts "C'est le tour du #{@players[1].name} !"
      return false
    else
      puts "C'est le tour du #{@players[0].name} !"
      return true
    end
  end

  def is_still_ongoing?
    if @board.finish == "x win"
      puts "#{@players[0].name} a gagné !"
    elsif @board.finish == "o win"
      puts "#{@players[1].name} a gagné !"
    elsif @board.finish == "nobody"
      puts "Personne n'a gagné la partie...."
    else
      puts "La partie continue !"
    end
  end
 
  def play_one_tour
    if self.tour
      @board.case(@players[0].figure, gets.chomp)
      puts @board.hashtag
      self.play_one_tour if self.count_o == self.count_x
   else
      @board.case(@players[1].figure, gets.chomp)
      puts @board.hashtag
      self.play_one_tour if self.count_o < self.count_x
    end
  end

  def play_several_tour
    puts @board.hashtag
    self.photo_moment
    while @board.finish != "o win" && @board.finish != "x win" && @board.finish != "nobody"
      self.play_one_tour
      self.photo_moment
    end
    self.is_still_ongoing?
  end


end

#binding.pry