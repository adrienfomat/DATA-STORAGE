# Data Storage Projet — Groupe 10

Projet réalisé dans le cadre du cours **Data Storage Systems (SQL & NoSQL)**.

L'objectif est de concevoir une plateforme de données pour une coopérative agricole dont le siège est à Paris, avec trois sites à Angers, Laval et Le Mans.

La coopérative vend différents paniers (fruits, légumes, fromage, viande, mixtes). Nous devons gérer les clients, les commandes simples et groupées, ainsi que les périodes de forte activité, notamment les fêtes de fin d'année.

## Travail réalisé

Le projet couvre les principales notions du cours :

- Modélisation des données et SQL avancé
- Normalisation (3NF, BCNF)
- PL/SQL, triggers et transactions
- Optimisation des requêtes et indexation
- Sécurité des données et RGPD
- Bases de données distribuées
- NoSQL (MongoDB, Redis)
- Documentation des choix techniques (ADR)

## Technologies utilisées

**Oracle AI Database 26ai Free**, **MySQL 8.4**, **MongoDB**, **Redis**, SQL Developer et Docker.

## Organisation du dépôt

- `donnees/` : fichiers CSV fournis, conservés sans modification
- `00_installation/` : configuration Oracle
- `L1_modele/` à `L8_adr/` : différentes étapes du projet
- `bonus_objet_relationnel/` : partie bonus
- `annexes/captures/` : captures des requêtes et résultats
- `docs/` : journal de bord et utilisation de l'IA
- `rapport/` : rapport final

Les données proviennent de quatre fichiers : `fermes.csv`, `clients.csv`, `paniers.csv` et `commandes.csv`. Les éventuelles erreurs sont traitées lors du chargement, sans modifier les fichiers d'origine.

## Équipe

**Groupe 10**

- FOMAT GIDE 
- EL KHEIR Douaa
- ANDRE Noa
- AMADOU SOUMANOU Raliatou