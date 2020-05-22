INSERT INTO reservation (ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active, deja_prolonge)
VALUES (1, 1, current_date, current_date, TRUE, FALSE),
       (2, 2, current_date, current_date, TRUE, TRUE),
       (3, 3, current_date, current_date, FALSE, FALSE),
       (4, 4, current_date, current_date, FALSE, TRUE);


INSERT INTO liste_attente (id_utilisateur, id_ouvrage, position_file_attente, notification_sent, notification_timestamp)
VALUES (1, 1, 1, TRUE, current_timestamp),
       (2, 1, 2, FALSE, NULL),
       (3, 2, 1, FALSE, NULL),
       (4, 2, 2, FALSE, NULL);
