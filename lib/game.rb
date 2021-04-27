class Game
  attr_accessor :human_player, :enemies

  def initialize(name)
    @human_player = HumanPlayer.new(name)
    @enemies = player
  end

  def kill_player
    l
  end

  def is_still_going
    l
  end

  def show_player
    l
  end

  def menu 
    puts "Quelle action veux-tu effectuer ?"
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner" 
    puts "Ou bien attaquer un joueur en vue :"
    puts "0 - #{player.show_state}"
    puts "1 - #{player.show_state}"
    print ">"
    input = gets.chomp
  end 

  def menu_choice
    if input == "a"
      human_player.search_weapon
    elsif input == "s"
      human_player.search_health_pack
    elsif input == "0"
      human_player.attacks(player)
    else
      human_player.attacks(player)
    end
  end 

  def enemies_attack
    l
  end

  def end 
    if human_player.life_points > 0
      puts "BRAVO ! TU AS GAGNE !"
    else 
      puts "Loser ! Tu as perdu !"
    end
  end 
end