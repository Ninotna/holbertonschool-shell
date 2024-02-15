#!/bin/bash

# Ce script démontre l'utilisation des variables spéciales Bash avec des analogies simples.

echo "Bienvenue dans notre aventure de script !"
# Affiche un message de bienvenue.

echo "Le nom de notre aventure est: \$0 = $0"
# Affiche le nom du script en utilisant la variable \$0.

# Vérifie si des arguments ont été passés au script.
if [ $# -eq 0 ]; then
  echo "Tu n'as pas donné de crayons de couleur (\$# = $#). Essayons avec au moins un crayon !"
  exit 1
  # Si aucun argument n'est passé, affiche un message et termine le script avec `exit 1`.
else
  echo "Nombre de crayons de couleur donnés: \$# = $#"
  # Sinon, affiche le nombre d'arguments passés avec \$#.
fi

echo "Tu as choisi de commencer avec le crayon de couleur: \$1 = $1"
# Affiche le premier argument passé au script, en utilisant \$1.

echo "Voici tous les crayons de couleur que tu as apportés pour l'aventure (\$@):"
for crayon in "$@"; do
  echo "Crayon de couleur: \$@ = $crayon"
done
# Utilise une boucle `for` pour afficher tous les arguments (\$@).

echo "Maintenant, essayons de dessiner quelque chose avec le premier crayon..."
touch "dessin_avec_$1.txt"
# Crée un fichier vide avec `touch`, nommé d'après le premier argument.

echo "Dessin créé avec le crayon \$1 = $1!"

# Vérifie le statut de sortie de la dernière commande exécutée.
if [ $? -eq 0 ]; then
  echo "Bravo ! Le dessin avec le crayon \$1 = $1 a été un succès (\$? = $?)."
  # \$? contient le statut de sortie de la dernière commande.
else
  echo "Oups, il semble qu'il y ait eu un problème avec le dessin (\$? = $?)."
fi

echo "L'identifiant unique de notre aventure est: \$\$ = $$"
# Affiche le PID du script en cours d'exécution avec \$\$.

echo "Merci d'avoir participé à l'aventure des crayons de couleur !"
# Message de clôture.

