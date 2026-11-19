#!bin/bash

echo "Début du script"
echo "--------------------------------"
echo "Les adresses IP et leurs méthodes HTTP"

awk '{print $1, $6}' jeuDeDonnees.txt

echo "--------------------------------"

echo "Compter le nombre de requêtes HTTP par adresse IP"

# Rappel : il faut sort avant uniq pour que uniq puisse fonctionner correctement (uniq ne fonctionne que sur des lignes triées)
awk '{print $1}' jeuDeDonnees.txt | sort |uniq -c

echo "--------------------------------"

echo "Afficher le chiffre d'affaire total"

awk -F, 'NR == 1 {next}
{
    total+= $3*$4
}
END {
    print "Chiffre d'\''affaire total : ", total, "€"
}' jeuDeDonnees.csv

echo "--------------------------------"

echo "Afficher le chiffre d'\''affaire total de chaque article"

awk -F, 'NR == 1 {next} 
{
    article[$1] += $3*$4
} 
END {
    for(a in article) printf "%-10s %6d€ \n", a, article[a]
}' jeuDeDonnees.csv

echo "--------------------------------"
echo "Fin du script"