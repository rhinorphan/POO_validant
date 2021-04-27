class Player
  attr_accessor :name, :life_points

  def initialize(player)
    @life_points = 10
    @name = player
  end

  def show_state
    "#{name} a #{life_points} points de vie."
  end

  def gets_damage(damage)
    @life_points = @life_points - damage
    if @life_points <= 0 
      puts " Le joueur #{name} a été tué !"
    end
  end

  def attacks(target)
    puts "Le joueur #{name} attaque le joueur #{target.name}."
    damage_received = compute_damage
    if target.life_points > 0
      puts "Il lui inflige #{damage_received} points de dommages."
    end
    target.gets_damage(damage_received)
  end

  def compute_damage
    return rand(1..6)
  end
end

class HumanPlayer < Player
  attr_accessor :name, :life_points, :weapon_level

  def initialize(player)
    @life_points = 100
    @name = player
    @weapon_level = 1
  end

  def show_state
    puts "#{name} a #{life_points} points de vie et une arme de niveau #{weapon_level}."
  end

  def search_weapon
    new_weapon_level = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{new_weapon_level}"
    if new_weapon_level > @weapon_level
      @weapon_level = new_weapon_level
      puts "Youhou ! Elle est meilleure que ton arme actuelle : tu la prends."
    else 
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  def search_health_pack
    health_pack = rand(1..6)
    if health_pack == 1
      puts "Tu n'as rien trouvé... "
    elsif health_pack >=2 && health_pack <= 5
      if (( self.life_points + 50) > 100)
        self.life_points = 100
      else
        self.life_points += 50
      end
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"
    else
      if (( self.life_points + 80) > 100)
        self.life_points = 100
      else
        self.life_points += 80
      end
      puts "Waow, tu as trouvé un pack de +80 points de vie !" 
    end
  end

  def compute_damage
    return rand(1..6) * @weapon_level
  end
end