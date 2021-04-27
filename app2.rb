require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#Acceuil
puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"

#Initialisation du joueur
puts "Choisi un nom de joueur :"
print ">"
username = gets.chomp
human_player = HumanPlayer.new(username)

#Initialisation des enemis
enemies = []
pnj_1 = Player.new("Josiane")
enemies.push(pnj_1)
pnj_2 = Player.new("José")
enemies.push(pnj_2)

#Le combat
while human_player.life_points > 0 && (pnj_1.life_points > 0 || pnj_2.life_points > 0)
  puts " "
  puts "-------------------------------------------------"
  puts " "
  human_player.show_state
  puts " "
  puts "-------------------------------------------------"
  #Menu combat
  puts "Quelle action veux-tu effectuer ?"
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner" 
  puts "Ou bien attaquer un joueur en vue :"
  puts "0 - #{pnj_1.show_state}"
  puts "1 - #{pnj_2.show_state}"
  print ">"
  input = gets.chomp
  puts " "
  puts "-------------------------------------------------"
  #Combat selon le choix du joueur
  if input == "a"
    human_player.search_weapon
  elsif input == "s"
    human_player.search_health_pack
  elsif input == "0"
    human_player.attacks(pnj_1)
  else
    human_player.attacks(pnj_2)
  end
  #Combat, les pnj attaquent
  puts "Les autres joueurs attaquent !"
  enemies.each do |enemy|
    enemy.attacks(human_player) if enemy.life_points > 0
  end
end

#Fin du jeu
if human_player.life_points > 0
  puts "BRAVO ! TU AS GAGNE !"
else 
  puts "Loser ! Tu as perdu !"
end
