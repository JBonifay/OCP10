CREATE TABLE IF NOT EXISTS reservation.liste_attente
(
    id                     INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_utilisateur         INT NOT NULL,
    id_ouvrage             INT NOT NULL,
    position_file_attente  INT NOT NULL,
    notification_sent      BIT NOT NULL,
    notification_timestamp TIMESTAMP
);

INSERT INTO reservation.reservation (ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
VALUES (10,100,current_date,current_date,TRUE);

INSERT INTO reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente, notification_sent,
                                       notification_timestamp)
VALUES (1, 1, 1, 1, TRUE, current_timestamp);
INSERT INTO reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente, notification_sent,
                                       notification_timestamp)
VALUES (2, 2, 1, 2, FALSE, NULL);
