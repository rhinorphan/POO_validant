require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#Acceuil
puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO 2.0' !     |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"

#Initialisation du joueur
puts "Choisi un nom de joueur :"
print ">"
username = gets.chomp

#Initialisation du jeux
my_game = Game.new("username")

#Jeux
while my_game.is_still_going !== true
  my_game.show_players
  my_game.menu
  my_game.menu_choice
  my_game.enemies_attack
end

#Fin de jeux 
my_game.end