-- Création du compte COOP (propriétaire des tables du projet)
-- À lancer avec la connexion BDD-system.
-- Si le compte existe déjà, il est supprimé puis recréé.

DECLARE
    v_nb NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_nb FROM dba_users WHERE username = 'COOP';
    IF v_nb > 0 THEN
        EXECUTE IMMEDIATE 'DROP USER coop CASCADE';
    END IF;
END;
/

CREATE USER coop IDENTIFIED BY coop
    DEFAULT TABLESPACE users
    QUOTA UNLIMITED ON users;

GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE SEQUENCE,
      CREATE PROCEDURE, CREATE TRIGGER, CREATE TYPE, CREATE SYNONYM,
      CREATE MATERIALIZED VIEW
   TO coop;

SELECT username, default_tablespace, account_status
  FROM dba_users
 WHERE username = 'COOP';
