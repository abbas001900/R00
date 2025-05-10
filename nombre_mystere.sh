#!/bin/bash
#===============================================================================
# Jeu du nombre mystère : le joueur doit deviner un nombre aléatoire
#===============================================================================

# Introduction
echo "========================================="
echo "     Bienvenue dans le jeu mystère !     "
echo "========================================="
echo
echo "Un nombre secret entre 1 et 100 a été choisi aléatoirement."
echo "Votre mission : le deviner en un minimum de tentatives."
echo "Après chaque proposition, vous saurez s’il faut viser plus haut ou plus bas."
echo "Bonne chance !"
echo

# Initialisation des variables
limitsup=100                              # Valeur maximale possible
nombre=0                                  # Nombre proposé par le joueur
nbtentative=0                             # Nombre de tentatives effectuées
aleatoire=$(( RANDOM % limitsup + 1 ))    # Génère un nombre entre 1 et limitsup

# Boucle de jeu
while [ "$nombre" -ne "$aleatoire" ]; do
  echo -n "Devinez ? "
  read nombre

  if [ "$nombre" -lt "$aleatoire" ]; then
    echo "... c'est plus grand !"
  elif [ "$nombre" -gt "$aleatoire" ]; then
    echo "... c'est plus petit !"
  fi

  nbtentative=$((nbtentative + 1))
done

# Message de fin
echo
echo "🎉 Bravo !! Vous avez deviné le nombre mystère : $aleatoire"
echo "🔢 Nombre de tentatives : $nbtentative"
echo "Merci d’avoir joué ! À bientôt."
echo

exit 0
