CREATE DATABASE IF NOT EXISTS utilisateur;

CREATE TABLE utilisateur.utilisateur
(
    utilisateur_id INT AUTO_INCREMENT,
    first_name     VARCHAR(100) NOT NULL,
    last_name      VARCHAR(100) NOT NULL,
    email          VARCHAR(300) NOT NULL,
    password       VARCHAR(300) NOT NULL,


    CONSTRAINT UTILISATEUR_PK
        PRIMARY KEY (utilisateur_id)
);


INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (1, 'Bridie', 'Beeble', 'bbeeble0@instagram.com', '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (2, 'Bernardine', 'Rowcliffe', 'browcliffe1@howstuffworks.com',
        '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (3, 'Calley', 'Craghead', 'ccraghead2@google.ca', '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (4, 'Sherlock', 'Blanket', 'sblanket3@columbia.edu', '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (5, 'Minnnie', 'Cardenosa', 'mcardenosa4@barnesandnoble.com',
        '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (6, 'Roddy', 'Stallybrass', 'rstallybrass5@ca.gov', '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (7, 'Daryn', 'Stokes', 'dstokes6@umn.edu', '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (8, 'Merissa', 'Mauchlen', 'mmauchlen7@about.me', '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (9, 'Flory', 'Devine', 'fdevine8@tumblr.com', '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (10, 'Gillan', 'Rapp', 'grapp9@nsw.gov.au', '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
INSERT
INTO utilisateur.utilisateur
    (utilisateur_id, first_name, last_name, email, password)
VALUES (100, 'Test User', 'Test User', 'TestUser@test.au', '$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK');
