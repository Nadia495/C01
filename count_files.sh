#!/bin/bash
#Verifier si un argument est fourni
if [ -z "$1"]; then
echo "Erreur: veuillez spécifier un repertoire"
exit 1
fi
#Verifier si le répertoire existe
if [!-d "$1"]; then
echo "Erreur : le répertoire '$1' n'existe pas."
exit 1
fi
#Compter le nombre de fichiers (exclut les dossiers cachés)
nombre_fichiers=$(ls -lA "$1" | grep "^-" | wc -l)
#Affiche le résultat 
echo "le dossier $1 contient $nombre_fichiers fichier(s)."
