# Uber_Pickup
Projet Uber Pickup dans le cadre de la certification Machine Learning Engineer

## Description
Le notebook uber_final.ipynb est la partie principale du projet
Le notebook permet d'analyser les points importants de demande de chauffeur pour une heure et un jour précis afin 
de mieux placer les chauffeurs pour faire diminuer le temps d'attente

## Tuto Exécution du Script

### Variables d'environnement du projet : 
MAP_BOX_TOKEN : Doit contenir votre clé api [MAPBOX](https://www.mapbox.com)

### Docker
* Si docker est installé sur votre poste, lancer simplement le script run.sh, il se chargera de créer une image docker "uberkimg", puis de la lancer, ensuite lancer vscode sur votre container docker en cours. Le code se trouve dans /home/app de la machine

* Si vous n'avez pas docker, sur votre environnement python assurez vous d'avoir toutes les librairies indiquées dans requirements.txt

* Penser à télécharger le jeu de [data](https://full-stack-bigdata-datasets.s3.eu-west-3.amazonaws.com/Machine+Learning+non+Supervisé/Projects/uber-trip-data.zip)

### Exécution du script
Vous pouvez lancer chaque cellule à la main ou d'un seul coup, les graphiques seront affichés en bas