CREATE DATABASE IF NOT EXISTS ouvrage;
CREATE DATABASE IF NOT EXISTS reservation;
CREATE DATABASE IF NOT EXISTS utilisateur;
CREATE DATABASE IF NOT EXISTS jwttoken;

CREATE USER bibliotheque@'%' IDENTIFIED BY 'rootbibliotheque';
GRANT ALL PRIVILEGES ON ouvrage.* TO bibliotheque@'%';
GRANT ALL PRIVILEGES ON reservation.* TO bibliotheque@'%';
GRANT ALL PRIVILEGES ON utilisateur.* TO bibliotheque@'%';
GRANT ALL PRIVILEGES ON jwttoken.* TO bibliotheque@'%';

CREATE TABLE jwttoken.jwttoken
(
    jwttoken_id INT           NOT NULL,
    jwttoken    VARCHAR(1000) NOT NULL,

    PRIMARY KEY (jwttoken_id)
);