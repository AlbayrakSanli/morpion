require 'pry'
require_relative 'boardcase'
require_relative 'board'
require_relative 'player'
require_relative 'game'

class Application
  attr_accessor :game, :photo

  def initialize
    puts "Veux-tu faire un morpion ? [YES/no]"
    partie = "#{gets.chomp}"
    self.initialize if partie != "YES" && partie != "no"

    if partie == "YES"
      puts "Joueur 1 - Quel est ton nom ?"
      joueur1 = gets.chomp

      puts "Joueur 2 - Quel est ton nom ?"
      joueur2 = gets.chomp
    end

    while partie == "YES"
      @game = Game.new(Player.new("#{joueur1}","x"),Player.new("#{joueur2}","o"))
      @game.play_several_tour
      @photo = @game.photo
      puts "Veux-tu faire un morpion ? [YES/no]"
      partie = "#{gets.chomp}"
    end

    

    puts "A une prochaine fois !"
  end
end

#binding.pry