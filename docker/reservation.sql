CREATE TABLE reservation
(
    id                      INT AUTO_INCREMENT,
    id_ouvrage              VARCHAR(100) NOT NULL,
    id_utilisateur          VARCHAR(100) NOT NULL,
    reservation_date_debut  DATE         NOT NULL,
    reservation_date_fin    DATE         NOT NULL,

    CONSTRAINT RESERVATION_PK
        PRIMARY KEY (id)
);