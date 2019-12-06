CREATE DATABASE IF NOT EXISTS ouvrage;
CREATE DATABASE IF NOT EXISTS reservation;
CREATE DATABASE IF NOT EXISTS utilisateur;
CREATE DATABASE IF NOT EXISTS stock;

CREATE USER 'bibliotheque'@'%' IDENTIFIED BY 'rootbibliotheque';
GRANT ALL PRIVILEGES ON ouvrage.* TO 'bibliotheque'@'%';
GRANT ALL PRIVILEGES ON reservation.* TO 'bibliotheque'@'%';
GRANT ALL PRIVILEGES ON utilisateur.* TO 'bibliotheque'@'%';
GRANT ALL PRIVILEGES ON stock.* TO 'bibliotheque'@'%';