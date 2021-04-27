Version 1.0 : coder un combat entre 2 joueurs

combat :

    2 joueurs
    niveau de vie donné (pour chaque joueur)
    baisse de ce niveau de vie (à chaque attaque)
    si niveau de vie atteint 0 => le personnage est mort

1. Player : attributs et initialize

    2 attributs (name, life_points)
    méthode initialize

2. Player : afficher l'état d'un joueur avec show_state
3. Player : subir une attaque avec gets_damage

    fait baisser le niveau de vie du joueur
    entrée : points

4. Player : attaquer avec attacks

    entrée : objet Player (joueur subissant l'attaque)
    méthode compute_damage
        calcule les dommages
        avec un chiffre au hasard entre 1 et 6
        stocke le résultat dans une variable

5. démarrage d'une partie et correction d'un bug

    mise en place d'un scénario

Version 2.0 : créer un nouveau type de joueur

1. Nouvelle class HumanPlayer

    avec les même attributs que Player

2. HumanPlayer : l'attribut @weapon_level et modification de initialize et show_state
3. HumanPlayer : augmenter les dommages causés

    modification de la méthode compute_damage

4. HumanPlayer : chercher une nouvelle arme

    nouvelle méthode search_weapon

5. HumanPlayer : chercher un pack de points de vie

nouvelle méthode search_health_pack
6. Combat interactif sur app_2.rb : toi contre José et Josiane

Version 3.0 : un jeu mieux organisé et plus d'ennemis

En cours de construction