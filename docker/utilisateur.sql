CREATE TABLE utilisateur
(
    id          INT AUTO_INCREMENT,
    first_name  VARCHAR(100) NOT NULL,
    second_name VARCHAR(100) NOT NULL,
    email       VARCHAR(300) NOT NULL,
    password    VARCHAR(300) NOT NULL,


    CONSTRAINT UTILISATEUR_PK
        PRIMARY KEY (id)
);