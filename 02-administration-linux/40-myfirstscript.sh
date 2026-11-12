#!/bin/bash
# rapport-systeme.sh : Affiche un résumé de l'état du système

echo "=== Rapport système ==="
echo "Date    : $(date)"
echo "Machine : $(hostname)"
echo "Utilisateur : $USER"
echo "Répertoire  : $PWD"
echo ""
echo "Espace disque :"
df -h /
echo ""
echo "Mémoire :"
free -h
echo "=== Fin du rapport ==="