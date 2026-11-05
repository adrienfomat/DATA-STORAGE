# Modèle

## Schéma entité-association

Voir `schema_EA.png`.

- FERME, CLIENT, PANIER, COMMANDE_GROUPEE
- COMMANDER entre CLIENT (0,N) et PANIER (0,N), avec la date, le nombre de places, le montant et le statut
- DEPENDRE : une ferme (site) dépend d'une autre ferme (le siège)
- ETRE_DOUBLON_DE : un client peut être le doublon d'un autre client
- RATTACHER : un client (1,1) est rattaché à une ferme (0,N)
- PROPOSER : un panier (1,1) est proposé par une ferme (0,N)
- REGROUPER : une commande (0,1) appartient à une commande groupée (1,N)

## Schéma relationnel

Clé primaire en gras, clé étrangère avec #.

- FERME (**ID_FERME**, NOM, VILLE, ROLE, #ID_FERME_SIEGE)
- CLIENT (**ID_CLIENT**, NOM, PRENOM, EMAIL, TELEPHONE, VILLE, #ID_FERME, DATE_INSCRIPTION, #ID_CLIENT_PRINCIPAL)
- PANIER (**ID_PANIER**, LIBELLE, CATEGORIE, #ID_FERME, DEBUT, DUREE_MINUTES, CAPACITE, PRIX_UNITAIRE)
- COMMANDE_GROUPEE (**ID_GROUPE**)
- COMMANDE (**ID_COMMANDE**, #ID_CLIENT, #ID_PANIER, DATE_COMMANDE, NB_PLACES, MONTANT, STATUT, #ID_GROUPE)

La commande a son propre identifiant, car un client peut commander plusieurs fois le même panier.

CLIENT a aussi une colonne calculée EMAIL_NORM (e-mail en minuscules, sans espaces), qui sert à repérer les doublons.
