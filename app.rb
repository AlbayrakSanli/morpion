require 'bundler'
Bundler.require

require_relative 'lib/boardcase'
require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/application'
require_relative 'lib/show'

my_board = Board.new
my_application = Application.new

puts "Veux-tu voir un moment fort ? [YES/no]"
response = "#{gets.chomp}"
if response == "YES" && !my_application.game.nil?
  puts "Donne moi un chiffre compris entre 0 et #{my_application.photo.length}"
  my_show = Show.new(my_application, gets.chomp.to_i)
else
  puts "Sois tu n'as lancé aucun jeu, sois tu n'as pas dit YES !"
end
