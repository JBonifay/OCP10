CREATE TABLE IF NOT EXISTS reservation.liste_attente
(
    id                     INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_utilisateur         INT NOT NULL,
    id_ouvrage             INT NOT NULL,
    position_file_attente  INT NOT NULL,
    notification_sent      BIT NOT NULL,
    notification_timestamp TIMESTAMP,
    is_active              BIT NOT NULL
);


INSERT INTO reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente, notification_sent,
                                       notification_timestamp, is_active)
VALUES (1, 1, 1, 1, FALSE, current_timestamp, TRUE);
