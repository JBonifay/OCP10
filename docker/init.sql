CREATE DATABASE if not exists ouvrage;
CREATE DATABASE if not exists reservation;
CREATE DATABASE if not exists utilisateur;

CREATE USER 'bibliotheque'@'%' IDENTIFIED BY 'rootbibliotheque';
GRANT ALL PRIVILEGES ON ouvrage.* TO 'bibliotheque'@'%';
GRANT ALL PRIVILEGES ON reservation.* TO 'bibliotheque'@'%';
GRANT ALL PRIVILEGES ON utilisateur.* TO 'bibliotheque'@'%';
