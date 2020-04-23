require 'pry'
require_relative 'boardcase'

class Board
  attr_accessor :boardcase
  
  def initialize
    @boardcase = []
    @boardcase << BoardCase.new.A1
    @boardcase << BoardCase.new.A2
    @boardcase << BoardCase.new.A3
    @boardcase << BoardCase.new.B1
    @boardcase << BoardCase.new.B2
    @boardcase << BoardCase.new.B3
    @boardcase << BoardCase.new.C1
    @boardcase << BoardCase.new.C2
    @boardcase << BoardCase.new.C3
  end

  def case(figure, position)
    @boardcase[0] = figure if position == "A1" && @boardcase[0] == " "
    @boardcase[1] = figure if position == "A2" && @boardcase[1] == " "
    @boardcase[2] = figure if position == "A3" && @boardcase[2] == " "
    @boardcase[3] = figure if position == "B1" && @boardcase[3] == " "
    @boardcase[4] = figure if position == "B2" && @boardcase[4] == " "
    @boardcase[5] = figure if position == "B3" && @boardcase[5] == " "
    @boardcase[6] = figure if position == "C1" && @boardcase[6] == " "
    @boardcase[7] = figure if position == "C2" && @boardcase[7] == " "
    @boardcase[8] = figure if position == "C3" && @boardcase[8] == " "
  end

  def hashtag
    puts
    puts " "*3 + "1" + " "*5 + "2" + " "*5 + "3" + " "*3
    puts
    puts "#"*19
    puts "|" + " "*5 + "|" + " "*5 + "|" + " "*5 + "|"
    puts "|" + "  #{@boardcase[0]}  |  #{@boardcase[1]}  |  #{@boardcase[2]}  " + "|" + "  A  "
    puts "|" + " "*5 + "|" + " "*5 + "|" + " "*5 + "|"

    puts "-"*19

    puts "|" + " "*5 + "|" + " "*5 + "|" + " "*5 + "|"
    puts "|" + "  #{@boardcase[3]}  |  #{@boardcase[4]}  |  #{@boardcase[5]}  " + "|" + "  B  "
    puts "|" + " "*5 + "|" + " "*5 + "|" + " "*5 + "|"

    puts "-"*19

    puts "|" + " "*5 + "|" + " "*5 + "|" + " "*5 + "|"
    puts "|" + "  #{@boardcase[6]}  |  #{@boardcase[7]}  |  #{@boardcase[8]}  " + "|" + "  C  "
    puts "|" + " "*5 + "|" + " "*5 + "|" + " "*5 + "|"
    puts "#"*19
  end

  def finish
    return "x win" if @boardcase[0] == "x" && @boardcase[1] == "x" && @boardcase[2] == "x"
    return "x win" if @boardcase[3] == "x" && @boardcase[4] == "x" && @boardcase[5] == "x"
    return "x win" if @boardcase[6] == "x" && @boardcase[7] == "x" && @boardcase[8] == "x"
    return "o win" if @boardcase[0] == "o" && @boardcase[1] == "o" && @boardcase[2] == "o"
    return "o win" if @boardcase[3] == "o" && @boardcase[4] == "o" && @boardcase[5] == "o"
    return "o win" if @boardcase[6] == "o" && @boardcase[7] == "o" && @boardcase[8] == "o"

    return "x win" if @boardcase[0] == "x" && @boardcase[3] == "x" && @boardcase[6] == "x"
    return "x win" if @boardcase[1] == "x" && @boardcase[4] == "x" && @boardcase[7] == "x"
    return "x win" if @boardcase[2] == "x" && @boardcase[5] == "x" && @boardcase[8] == "x"
    return "o win" if @boardcase[0] == "o" && @boardcase[3] == "o" && @boardcase[6] == "o"
    return "o win" if @boardcase[1] == "o" && @boardcase[4] == "o" && @boardcase[7] == "o"
    return "o win" if @boardcase[2] == "o" && @boardcase[5] == "o" && @boardcase[8] == "o"

    return "o win" if @boardcase[0] == "o" && @boardcase[4] == "o" && @boardcase[8] == "o"
    return "o win" if @boardcase[2] == "o" && @boardcase[4] == "o" && @boardcase[6] == "o"
    return "x win" if @boardcase[0] == "x" && @boardcase[4] == "x" && @boardcase[8] == "x"
    return "x win" if @boardcase[2] == "x" && @boardcase[4] == "x" && @boardcase[6] == "x"
  
    return "nobody" if (@boardcase.count("x") == 4 && @boardcase.count("o") == 5) || (@boardcase.count("o") == 4 && @boardcase.count("x") == 5)
  end

end

#binding.pry