#!/bin/bash
#===============================================================================
# Script : jeu_mystere.sh
# Description : Petit jeu où l'utilisateur doit deviner un nombre aléatoire.
# Auteur : [Ton nom ici, si tu veux]
#===============================================================================

# Affichage de la bannière d'accueil
echo "========================================="
echo "     Bienvenue dans le jeu mystère !     "
echo "========================================="
echo
# Présentation des règles du jeu
echo "Un nombre secret entre 1 et 100 a été choisi aléatoirement."
echo "Votre mission, le deviner en un minimum de tentatives."
echo "Après chaque proposition, vous saurez s’il faut viser plus haut ou plus bas."
echo "Let's go !"
echo

#------------------------------------------
# Initialisation des différentes variables
#------------------------------------------

limitsup=100                              # Valeur maximale du nombre à deviner
nombre=0                                  # Initialisation de la variable nombre qui stocke le nombre entré par le joueur
nbreTentatives=0                         # Compte le nombre d'essais effectués
aleatoire=$(( RANDOM % limitsup + 1 ))    # Génère un nombre aléatoire entre 1 et 100

#-------------------------------
# Boucle principale du jeu
#-------------------------------
# Tant que le joueur ne trouve pas le bon nombre
while [ "$nombre" -ne "$aleatoire" ]; do  # Début de la boucle  qui s'effectuera tant que le nombre entré n'est pas égale au nombre mystère
  read -p "Devinez : " nombre              # Invite le joueur à entrer un nombre et récupère la saisie utilisateur

  # Compare la saisie avec le nombre à deviner
  if [ "$nombre" -lt "$aleatoire" ]; then # Si le nombre entré par le joueur est plus petit que le nombre mystère
    echo "... c'est plus grand !"
    echo
  elif [ "$nombre" -gt "$aleatoire" ]; then # Si le nombre entré par le joueur est plus grand que le nombre mystère
    echo "... c'est plus petit !"
    echo
  fi # Fin de la condition

  # Incrémente de 1 le nombre de tentatives après chaque essai
  nbreTentative=$((nbreTentative + 1))

done # Fin de la boucle

#-----------------------------------
# Fin du jeu : le joueur a trouvé
#-----------------------------------
echo
echo "🏆🎉🥳 Bravo !! Vous avez deviné le nombre mystère : $aleatoire"
echo "🔢 Nombre de tentatives : $nbreTentative"
echo "😉 Merci d’avoir joué ! À bientôt."
echo

exit 0    # Marque la fin normale du script
