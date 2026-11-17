#!bin/bash

echo "Début du script"

echo $' ----- Changement de la première occurrence -----\n'

# Changer uniquement la première occurrence
sed 's/des fêtes/de Noël/' test.txt

# -e est l'équivalent de $''
echo -e '\n ----- Changement de toutes les occurrences -----\n'

# Changer toutes les occurrences
sed 's/des fêtes/de Noël/g' test.txt

echo $'\n ----- Changement du fichier en cours... -----\n'

# Changement du fichier avec un backup
sed -i.bak 's/des fêtes/de Noël/g' test.txt

# Changement du fichier avec un backup encore
# ATTENTION : Le fichier cible est le même je vais donc écraser le backup précédent
sed -i.bak '/#/s/#//g' test.txt

echo 'Fin du script'