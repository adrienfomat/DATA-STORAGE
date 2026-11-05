# Règles de gestion

1. La coopérative a un siège à Paris et trois sites : Angers, Laval et Le Mans.
2. Chaque site dépend du siège. Le siège ne dépend d'aucune ferme.
3. Un client est rattaché à un seul site.
4. L'adresse e-mail d'un client n'est pas obligatoire.
5. Deux lignes clients sont la même personne si leurs e-mails sont identiques une fois en minuscules et sans espaces. La ligne en double pointe vers la ligne principale.
6. Un panier est proposé par un seul site.
7. Un panier appartient à une catégorie : fromage, fruits, légumes, viande ou mixte.
8. Un panier a une durée, une capacité et un prix strictement positifs.
9. Une commande est passée par un client pour un panier, à une date, pour un nombre de places, avec un montant et un statut.
10. Une commande porte sur au moins une place et son montant est positif ou nul.
11. Le statut d'une commande est CONFIRMEE ou ANNULEE.
12. Un client peut commander plusieurs fois le même panier.
13. Une commande peut faire partie d'une commande groupée, qui peut regrouper des paniers de plusieurs sites.
14. Le site d'une commande est celui du panier, pas celui du client.
15. Une commande est passée au plus tard au début du panier (contrôlée par un trigger en L4).
16. Les places confirmées d'un panier ne dépassent pas sa capacité (contrôlée en L4).
