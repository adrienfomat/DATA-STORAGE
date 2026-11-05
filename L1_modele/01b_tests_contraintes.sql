-- Tests des contraintes (connexion BDD-coop, après 01_schema.sql)
-- Les tests T1 à T6 doivent être refusés. On finit par un ROLLBACK.

INSERT INTO FERME VALUES (1, 'Siège', 'Paris', 'siège', NULL);
INSERT INTO FERME VALUES (2, 'Site Angers', 'Angers', 'site', 1);
INSERT INTO CLIENT (ID_CLIENT, NOM, PRENOM, EMAIL, TELEPHONE, VILLE, ID_FERME, DATE_INSCRIPTION)
VALUES (1, 'Test', 'Client', ' Test.Client@Example.org ', '0600000000', 'Angers', 2, DATE '2025-01-01');
INSERT INTO PANIER VALUES (1, 'Panier test', 'fromage', 2, TIMESTAMP '2025-12-20 10:00:00', 60, 10, 20);

-- T1 : un site sans siège
INSERT INTO FERME VALUES (9, 'Site sans siège', 'Tours', 'site', NULL);

-- T2 : catégorie inconnue
INSERT INTO PANIER VALUES (2, 'Panier poisson', 'poisson', 2, TIMESTAMP '2025-12-20 10:00:00', 60, 10, 20);

-- T3 : montant négatif
INSERT INTO COMMANDE VALUES (1, 1, 1, TIMESTAMP '2025-12-01 09:00:00', 1, -20, 'CONFIRMEE', NULL);

-- T4 : panier qui n'existe pas
INSERT INTO COMMANDE VALUES (2, 1, 99999, TIMESTAMP '2025-12-01 09:00:00', 1, 20, 'CONFIRMEE', NULL);

-- T5 : statut inconnu
INSERT INTO COMMANDE VALUES (3, 1, 1, TIMESTAMP '2025-12-01 09:00:00', 1, 20, 'EN_ATTENTE', NULL);

-- T6 : client doublon de lui-même
UPDATE CLIENT SET ID_CLIENT_PRINCIPAL = 1 WHERE ID_CLIENT = 1;

-- T7 : l'adresse normalisée doit donner test.client@example.org
SELECT EMAIL, EMAIL_NORM FROM CLIENT WHERE ID_CLIENT = 1;

ROLLBACK;
